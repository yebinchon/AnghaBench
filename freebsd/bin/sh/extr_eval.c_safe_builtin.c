
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXPORTCMD ;
 int SETCMD ;
 int TRAPCMD ;
 int ULIMITCMD ;
 int UMASKCMD ;
 scalar_t__ safe_builtin_always (int) ;

__attribute__((used)) static int
safe_builtin(int idx, int argc, char **argv)
{

 if (safe_builtin_always(idx))
  return (1);
 if (idx == EXPORTCMD || idx == TRAPCMD || idx == ULIMITCMD ||
     idx == UMASKCMD)
  return (argc <= 1 || (argc == 2 && argv[1][0] == '-'));
 if (idx == SETCMD)
  return (argc <= 1 || (argc == 2 && (argv[1][0] == '-' ||
      argv[1][0] == '+') && argv[1][1] == 'o' &&
      argv[1][2] == '\0'));
 return (0);
}
