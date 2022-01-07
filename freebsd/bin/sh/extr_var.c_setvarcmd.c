
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int setvar (char*,char*,int ) ;
 int unsetcmd (int,char**) ;

int
setvarcmd(int argc, char **argv)
{
 if (argc <= 2)
  return unsetcmd(argc, argv);
 else if (argc == 3)
  setvar(argv[1], argv[2], 0);
 else
  error("too many arguments");
 return 0;
}
