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
struct macro_scope {int dummy; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int FUNC0 () ; 
 struct macro_scope* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 scalar_t__ expression_context_block ; 
 int /*<<< orphan*/  expression_context_pc ; 
 void* expression_macro_lookup_baton ; 
 int /*<<< orphan*/  expression_macro_lookup_func ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_current_contents ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  macro_original_text ; 
 struct cleanup* FUNC5 (int /*<<< orphan*/ ,struct macro_scope**) ; 
 int /*<<< orphan*/  null_macro_lookup ; 
 struct macro_scope* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scan_macro_cleanup ; 
 int /*<<< orphan*/  standard_macro_lookup ; 

__attribute__((used)) static int
FUNC7 (void)
{
  /* Set up a lookup function for the macro expander.  */
  struct macro_scope *scope = 0;
  struct cleanup *back_to = FUNC5 (free_current_contents, &scope);

  if (expression_context_block)
    scope = FUNC6 (FUNC3 (expression_context_pc, 0));
  else
    scope = FUNC1 ();

  if (scope)
    {
      expression_macro_lookup_func = standard_macro_lookup;
      expression_macro_lookup_baton = (void *) scope;
    }
  else
    {
      expression_macro_lookup_func = null_macro_lookup;
      expression_macro_lookup_baton = 0;      
    }

  FUNC4 (! macro_original_text);
  FUNC5 (scan_macro_cleanup, 0);

  {
    int result = FUNC0 ();
    FUNC2 (back_to);
    return result;
  }
}