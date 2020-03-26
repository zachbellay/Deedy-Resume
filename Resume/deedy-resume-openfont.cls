% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.0cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{000000} 
\definecolor{headings}{HTML}{333333}
\definecolor{subheadings}{RGB}{43, 150, 205}
% \definecolor{section}{RGB}{43, 150, 205}
%\definecolor{objective}{RGB}{31, 59, 63}
\definecolor{section}{HTML}{6A6A6A}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Scale=0.9, Color=primary, Path = fonts/century-gothic/]{GOTHIC}
%\setsansfont[Color=primary, Scale=MatchLowercase,Mapping=tex-text, Path = fonts/century-gothic/]{GOTHIC}


% Date command
\usepackage[absolute]{textpos}
\usepackage[USenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
Last Updated on \today
\end{textblock}}

\newcommand{\namesection}[3]{
\centering{
\fontsize{34pt}{34pt}
\fontspec[Path = fonts/lato/]{Lato-Hai}\selectfont #1 
\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
} \\[5pt]
\centering{
\color{subheadings}
\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3}
}

% To have GPA to the right 
\newcommand\textline[4][t]{%
  \par\smallskip\noindent\parbox[#1]{.80\textwidth}{\raggedright\texttt{}#2}%
  \parbox[#1]{.20\textwidth}{\raggedleft\texttt{#4}}\par\normalfont\normalsize
}


% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{10pt}}



\titleformat{\section}{\color{section}
\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{14pt}{14pt}\selectfont \raggedright}{}{0em}{}


\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/century-gothic/]{GOTHIC}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}


\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{10pt}{10pt}\selectfont\uppercase {#1}}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{10pt}\selectfont {#1\\} \normalfont}

% Objective command
\newcommand{\objective}[1]{
\color{headings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{9pt}{10pt}\selectfont\bfseries {#1} \normalfont}

% Objective text
\newcommand{\objectivetext
}[1]{
\color{headings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{8pt}{9pt}\selectfont\bfseries {#1} \normalfont}
% Location command
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{8pt}{9pt}\selectfont {#1} \normalfont\normalsize}

% Normal Font
\newcommand{\normal}[1]{\color{headings}\normalfont\normalsize{#1}}

% Location bold
\newcommand{\locationbold}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Bold}\fontsize{10pt}{12pt}\selectfont {#1} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

