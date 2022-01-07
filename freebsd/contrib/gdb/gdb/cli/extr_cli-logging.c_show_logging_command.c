
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int logging_filename ;
 scalar_t__ logging_overwrite ;
 scalar_t__ logging_redirect ;
 int printf_unfiltered (char*,...) ;
 int * saved_filename ;
 scalar_t__ strcmp (int ,int *) ;

void
show_logging_command (char *args, int from_tty)
{
  if (saved_filename)
    printf_unfiltered ("Currently logging to \"%s\".\n", saved_filename);
  if (saved_filename == ((void*)0)
      || strcmp (logging_filename, saved_filename) != 0)
    printf_unfiltered ("Future logs will be written to %s.\n",
         logging_filename);

  if (logging_overwrite)
    printf_unfiltered ("Logs will overwrite the log file.\n");
  else
    printf_unfiltered ("Logs will be appended to the log file.\n");

  if (logging_redirect)
    printf_unfiltered ("Output will be sent only to the log file.\n");
  else
    printf_unfiltered ("Output will be logged and displayed.\n");
}
