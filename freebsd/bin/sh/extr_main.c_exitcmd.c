
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exitshell (int ) ;
 int exitshell_savedstatus () ;
 int number (char*) ;
 scalar_t__ stoppedjobs () ;

int
exitcmd(int argc, char **argv)
{
 if (stoppedjobs())
  return 0;
 if (argc > 1)
  exitshell(number(argv[1]));
 else
  exitshell_savedstatus();
}
