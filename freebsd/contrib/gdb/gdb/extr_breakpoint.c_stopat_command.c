
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int break_command_1 (char*,int ,int,int *) ;
 int isdigit (char) ;
 int printf_filtered (char*) ;

__attribute__((used)) static void
stopat_command (char *arg, int from_tty)
{
  int badInput = 0;

  if (arg == (char *) ((void*)0) || *arg == '*')
    badInput = 1;
  else
    {
      char *argptr = arg;
      int hasColon = 0;



      while (*argptr && !hasColon)
 {
   hasColon = (*argptr == ':');
   argptr++;
 }

      if (hasColon)
 badInput = (*argptr == ':');
      else
 badInput = !isdigit (*arg);
    }

  if (badInput)
    printf_filtered ("Usage: stop at <line>\n");
  else
    break_command_1 (arg, 0, from_tty, ((void*)0));
}
