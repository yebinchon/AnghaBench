
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf_unfiltered (int ,char*,int *) ;
 int gdb_stdout ;
 int pop_output_files () ;
 int * saved_filename ;
 int xfree (int *) ;

__attribute__((used)) static void
set_logging_off (char *args, int from_tty)
{
  if (saved_filename == ((void*)0))
    return;

  pop_output_files ();
  if (from_tty)
    fprintf_unfiltered (gdb_stdout, "Done logging to %s.\n", saved_filename);
  xfree (saved_filename);
  saved_filename = ((void*)0);
}
