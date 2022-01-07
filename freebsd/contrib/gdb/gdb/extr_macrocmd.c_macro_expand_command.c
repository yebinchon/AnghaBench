
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char macro_scope ;
struct cleanup {int dummy; } ;


 char* default_macro_scope () ;
 int do_cleanups (struct cleanup*) ;
 int error (char*) ;
 int fputs_filtered (char*,int ) ;
 int free_current_contents ;
 int gdb_stdout ;
 char* macro_expand (char*,int ,char*) ;
 struct cleanup* make_cleanup (int ,char**) ;
 int standard_macro_lookup ;

__attribute__((used)) static void
macro_expand_command (char *exp, int from_tty)
{
  struct macro_scope *ms = ((void*)0);
  char *expanded = ((void*)0);
  struct cleanup *cleanup_chain = make_cleanup (free_current_contents, &ms);
  make_cleanup (free_current_contents, &expanded);






  if (! exp || ! *exp)
    error ("You must follow the `macro expand' command with the"
           " expression you\n"
           "want to expand.");

  ms = default_macro_scope ();
  if (ms)
    {
      expanded = macro_expand (exp, standard_macro_lookup, ms);
      fputs_filtered ("expands to: ", gdb_stdout);
      fputs_filtered (expanded, gdb_stdout);
      fputs_filtered ("\n", gdb_stdout);
    }
  else
    fputs_filtered ("GDB has no preprocessor macro information for "
                    "that code.\n",
                    gdb_stdout);

  do_cleanups (cleanup_chain);
  return;
}
