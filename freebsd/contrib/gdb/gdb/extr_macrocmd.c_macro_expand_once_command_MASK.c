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
typedef  char macro_scope ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_current_contents ; 
 int /*<<< orphan*/  gdb_stdout ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 
 struct cleanup* FUNC5 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  standard_macro_lookup ; 

__attribute__((used)) static void
FUNC6 (char *exp, int from_tty)
{
  struct macro_scope *ms = NULL;
  char *expanded = NULL;
  struct cleanup *cleanup_chain = FUNC5 (free_current_contents, &ms);
  FUNC5 (free_current_contents, &expanded);

  /* You know, when the user doesn't specify any expression, it would be
     really cool if this defaulted to the last expression evaluated.
     And it should set the once-expanded text as the new `last
     expression'.  That way, you could just hit return over and over and
     see the expression expanded one level at a time.  */
  if (! exp || ! *exp)
    FUNC2 ("You must follow the `macro expand-once' command with"
           " the expression\n"
           "you want to expand.");

  ms = FUNC0 ();
  if (ms)
    {
      expanded = FUNC4 (exp, standard_macro_lookup, ms);
      FUNC3 ("expands to: ", gdb_stdout);
      FUNC3 (expanded, gdb_stdout);
      FUNC3 ("\n", gdb_stdout);
    }
  else
    FUNC3 ("GDB has no preprocessor macro information for "
                    "that code.\n",
                    gdb_stdout);

  FUNC1 (cleanup_chain);
  return;
}