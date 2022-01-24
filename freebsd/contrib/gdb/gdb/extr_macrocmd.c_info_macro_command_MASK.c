#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct macro_source_file {int dummy; } ;
struct macro_scope {int line; struct macro_source_file* file; } ;
struct macro_definition {scalar_t__ kind; int argc; char** argv; char* replacement; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 struct macro_scope* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_current_contents ; 
 int /*<<< orphan*/  gdb_stdout ; 
 struct macro_source_file* FUNC5 (struct macro_source_file*,int,char*,int*) ; 
 scalar_t__ macro_function_like ; 
 struct macro_definition* FUNC6 (struct macro_source_file*,int,char*) ; 
 struct cleanup* FUNC7 (int /*<<< orphan*/ ,struct macro_scope**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct macro_source_file*,int) ; 

__attribute__((used)) static void
FUNC9 (char *name, int from_tty)
{
  struct macro_scope *ms = NULL;
  struct cleanup *cleanup_chain = FUNC7 (free_current_contents, &ms);
  struct macro_definition *d;
  
  if (! name || ! *name)
    FUNC2 ("You must follow the `info macro' command with the name"
           " of the macro\n"
           "whose definition you want to see.");

  ms = FUNC0 ();
  if (! ms)
    FUNC2 ("GDB has no preprocessor macro information for that code.");

  d = FUNC6 (ms->file, ms->line, name);
  if (d)
    {
      int line;
      struct macro_source_file *file
        = FUNC5 (ms->file, ms->line, name, &line);

      FUNC3 (gdb_stdout, "Defined at ");
      FUNC8 (gdb_stdout, file, line);
      FUNC3 (gdb_stdout, "#define %s", name);
      if (d->kind == macro_function_like)
        {
          int i;

          FUNC4 ("(", gdb_stdout);
          for (i = 0; i < d->argc; i++)
            {
              FUNC4 (d->argv[i], gdb_stdout);
              if (i + 1 < d->argc)
                FUNC4 (", ", gdb_stdout);
            }
          FUNC4 (")", gdb_stdout);
        }
      FUNC3 (gdb_stdout, " %s\n", d->replacement);
    }
  else
    {
      FUNC3 (gdb_stdout,
                        "The symbol `%s' has no definition as a C/C++"
                        " preprocessor macro\n"
                        "at ", name);
      FUNC8 (gdb_stdout, ms->file, ms->line);
    }

  FUNC1 (cleanup_chain);
}