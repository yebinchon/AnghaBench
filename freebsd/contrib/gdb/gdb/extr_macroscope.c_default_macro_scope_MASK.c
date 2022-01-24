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
struct symtab_and_line {int /*<<< orphan*/  line; int /*<<< orphan*/  symtab; } ;
struct macro_source_file {int dummy; } ;
struct macro_scope {int dummy; } ;

/* Variables and functions */
 scalar_t__ deprecated_selected_frame ; 
 struct symtab_and_line FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct symtab_and_line FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct macro_scope* FUNC4 (struct symtab_and_line) ; 
 scalar_t__ target_has_registers ; 

struct macro_scope *
FUNC5 (void)
{
  struct symtab_and_line sal;
  struct macro_source_file *main;
  struct macro_scope *ms;

  /* If there's a selected frame, use its PC.  */ 
  if (deprecated_selected_frame)
    sal = FUNC0 (FUNC2 (deprecated_selected_frame), 0);
  
  /* If the target has any registers at all, then use its PC.  Why we
     would have registers but no stack, I'm not sure.  */
  else if (target_has_registers)
    sal = FUNC0 (FUNC3 (), 0);

  /* If all else fails, fall back to the current listing position.  */
  else
    {
      /* Don't call select_source_symtab here.  That can raise an
         error if symbols aren't loaded, but GDB calls the expression
         evaluator in all sorts of contexts.

         For example, commands like `set width' call the expression
         evaluator to evaluate their numeric arguments.  If the
         current language is C, then that may call this function to
         choose a scope for macro expansion.  If you don't have any
         symbol files loaded, then get_current_or_default would raise an
         error.  But `set width' shouldn't raise an error just because
         it can't decide which scope to macro-expand its argument in.  */
      struct symtab_and_line cursal = 
      			FUNC1 ();
      
      sal.symtab = cursal.symtab;
      sal.line = cursal.line;
    }

  return FUNC4 (sal);
}