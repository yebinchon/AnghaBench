
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDOUT_FILENO ;
 char* getenv (char*) ;
 scalar_t__ isatty (int ) ;

__attribute__((used)) static bool
do_color_from_env(void)
{
 const char *p;
 bool doit;

 doit = 0;
 p = getenv("CLICOLOR");
 if (p == ((void*)0)) {




  p = getenv("COLORTERM");
  if (p != ((void*)0) && *p != '\0')
   doit = 1;
 } else
  doit = 1;

 return (doit &&
     (isatty(STDOUT_FILENO) || getenv("CLICOLOR_FORCE")));
}
