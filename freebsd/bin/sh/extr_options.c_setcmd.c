
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTOFF ;
 int INTON ;
 char** argptr ;
 int options (int ) ;
 int optschanged () ;
 int setparam (int,char**) ;
 int showvarscmd (int,char**) ;

int
setcmd(int argc, char **argv)
{
 if (argc == 1)
  return showvarscmd(argc, argv);
 INTOFF;
 options(0);
 optschanged();
 if (*argptr != ((void*)0)) {
  setparam(argc - (argptr - argv), argptr);
 }
 INTON;
 return 0;
}
