
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 struct ui_file* cli_out_set_stream (int ,struct ui_file*) ;
 int cli_uiout ;
 int gdb_setup_readline () ;
 struct ui_file* gdb_stdout ;

__attribute__((used)) static int
cli_interpreter_resume (void *data)
{
  struct ui_file *stream;






  stream = cli_out_set_stream (cli_uiout, gdb_stdout);
  if (stream != gdb_stdout)
    {
      cli_out_set_stream (cli_uiout, stream);
      stream = ((void*)0);
    }

  gdb_setup_readline ();

  if (stream != ((void*)0))
    cli_out_set_stream (cli_uiout, gdb_stdout);

  return 1;
}
