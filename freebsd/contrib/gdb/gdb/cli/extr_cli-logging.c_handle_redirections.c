
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_file {int dummy; } ;
struct TYPE_2__ {struct ui_file* targ; struct ui_file* log; struct ui_file* err; struct ui_file* out; } ;


 int fprintf_unfiltered (struct ui_file*,char*,int *) ;
 struct ui_file* gdb_fopen (int *,char*) ;
 struct ui_file* gdb_stderr ;
 struct ui_file* gdb_stdlog ;
 struct ui_file* gdb_stdout ;
 struct ui_file* gdb_stdtarg ;
 int * logging_filename ;
 scalar_t__ logging_overwrite ;
 int logging_redirect ;
 int perror_with_name (char*) ;
 int * saved_filename ;
 TYPE_1__ saved_output ;
 struct ui_file* tee_file_new (struct ui_file*,int ,struct ui_file*,int) ;
 scalar_t__ ui_out_redirect (int ,struct ui_file*) ;
 int uiout ;
 int warning (char*) ;
 int * xstrdup (int *) ;

__attribute__((used)) static void
handle_redirections (int from_tty)
{
  struct ui_file *output;

  if (saved_filename != ((void*)0))
    {
      fprintf_unfiltered (gdb_stdout, "Already logging to %s.\n",
     saved_filename);
      return;
    }

  output = gdb_fopen (logging_filename, logging_overwrite ? "w" : "a");
  if (output == ((void*)0))
    perror_with_name ("set logging");


  if (!logging_redirect)
    {
      output = tee_file_new (gdb_stdout, 0, output, 1);
      if (output == ((void*)0))
 perror_with_name ("set logging");
      if (from_tty)
 fprintf_unfiltered (gdb_stdout, "Copying output to %s.\n",
       logging_filename);
    }
  else if (from_tty)
    fprintf_unfiltered (gdb_stdout, "Redirecting output to %s.\n",
   logging_filename);

  saved_filename = xstrdup (logging_filename);
  saved_output.out = gdb_stdout;
  saved_output.err = gdb_stderr;
  saved_output.log = gdb_stdlog;
  saved_output.targ = gdb_stdtarg;

  gdb_stdout = output;
  gdb_stderr = output;
  gdb_stdlog = output;
  gdb_stdtarg = output;

  if (ui_out_redirect (uiout, gdb_stdout) < 0)
    warning ("Current output protocol does not support redirection");
}
