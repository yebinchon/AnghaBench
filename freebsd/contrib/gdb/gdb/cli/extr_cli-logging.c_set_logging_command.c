
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf_unfiltered (char*) ;

__attribute__((used)) static void
set_logging_command (char *args, int from_tty)
{
  printf_unfiltered ("\"set logging\" lets you log output to a file.\n");
  printf_unfiltered ("Usage: set logging on [FILENAME]\n");
  printf_unfiltered ("       set logging off\n");
  printf_unfiltered ("       set logging file FILENAME\n");
  printf_unfiltered ("       set logging overwrite [on|off]\n");
  printf_unfiltered ("       set logging redirect [on|off]\n");
}
