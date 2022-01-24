#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_7__ {TYPE_1__* machine; } ;
struct TYPE_6__ {int num_gprs; int num_fprs; int stack_words; } ;
struct TYPE_5__ {int /*<<< orphan*/  varargs_size; } ;
typedef  TYPE_2__ CUMULATIVE_ARGS ;

/* Variables and functions */
 int /*<<< orphan*/  COMPONENT_REF ; 
 scalar_t__ EABI_FLOAT_VARARGS_P ; 
 int /*<<< orphan*/  EXPAND_NORMAL ; 
 int MAX_ARGS_IN_REGISTERS ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int UNITS_PER_FPREG ; 
 int UNITS_PER_FPVALUE ; 
 int UNITS_PER_WORD ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 TYPE_4__* cfun ; 
 int /*<<< orphan*/  const0_rtx ; 
 TYPE_2__ current_function_args_info ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  va_list_type_node ; 
 int /*<<< orphan*/  virtual_incoming_args_rtx ; 

void
FUNC10 (tree valist, rtx nextarg)
{
  if (EABI_FLOAT_VARARGS_P)
    {
      const CUMULATIVE_ARGS *cum;
      tree f_ovfl, f_gtop, f_ftop, f_goff, f_foff;
      tree ovfl, gtop, ftop, goff, foff;
      tree t;
      int gpr_save_area_size;
      int fpr_save_area_size;
      int fpr_offset;

      cum = &current_function_args_info;
      gpr_save_area_size
	= (MAX_ARGS_IN_REGISTERS - cum->num_gprs) * UNITS_PER_WORD;
      fpr_save_area_size
	= (MAX_ARGS_IN_REGISTERS - cum->num_fprs) * UNITS_PER_FPREG;

      f_ovfl = FUNC2 (va_list_type_node);
      f_gtop = FUNC0 (f_ovfl);
      f_ftop = FUNC0 (f_gtop);
      f_goff = FUNC0 (f_ftop);
      f_foff = FUNC0 (f_goff);

      ovfl = FUNC4 (COMPONENT_REF, FUNC1 (f_ovfl), valist, f_ovfl,
		     NULL_TREE);
      gtop = FUNC4 (COMPONENT_REF, FUNC1 (f_gtop), valist, f_gtop,
		     NULL_TREE);
      ftop = FUNC4 (COMPONENT_REF, FUNC1 (f_ftop), valist, f_ftop,
		     NULL_TREE);
      goff = FUNC4 (COMPONENT_REF, FUNC1 (f_goff), valist, f_goff,
		     NULL_TREE);
      foff = FUNC4 (COMPONENT_REF, FUNC1 (f_foff), valist, f_foff,
		     NULL_TREE);

      /* Emit code to initialize OVFL, which points to the next varargs
	 stack argument.  CUM->STACK_WORDS gives the number of stack
	 words used by named arguments.  */
      t = FUNC7 (FUNC1 (ovfl), virtual_incoming_args_rtx);
      if (cum->stack_words > 0)
	t = FUNC3 (PLUS_EXPR, FUNC1 (ovfl), t,
		    FUNC5 (NULL_TREE,
				   cum->stack_words * UNITS_PER_WORD));
      t = FUNC3 (MODIFY_EXPR, FUNC1 (ovfl), ovfl, t);
      FUNC6 (t, const0_rtx, VOIDmode, EXPAND_NORMAL);

      /* Emit code to initialize GTOP, the top of the GPR save area.  */
      t = FUNC7 (FUNC1 (gtop), virtual_incoming_args_rtx);
      t = FUNC3 (MODIFY_EXPR, FUNC1 (gtop), gtop, t);
      FUNC6 (t, const0_rtx, VOIDmode, EXPAND_NORMAL);

      /* Emit code to initialize FTOP, the top of the FPR save area.
	 This address is gpr_save_area_bytes below GTOP, rounded
	 down to the next fp-aligned boundary.  */
      t = FUNC7 (FUNC1 (ftop), virtual_incoming_args_rtx);
      fpr_offset = gpr_save_area_size + UNITS_PER_FPVALUE - 1;
      fpr_offset &= ~(UNITS_PER_FPVALUE - 1);
      if (fpr_offset)
	t = FUNC3 (PLUS_EXPR, FUNC1 (ftop), t,
		    FUNC5 (NULL_TREE, -fpr_offset));
      t = FUNC3 (MODIFY_EXPR, FUNC1 (ftop), ftop, t);
      FUNC6 (t, const0_rtx, VOIDmode, EXPAND_NORMAL);

      /* Emit code to initialize GOFF, the offset from GTOP of the
	 next GPR argument.  */
      t = FUNC3 (MODIFY_EXPR, FUNC1 (goff), goff,
		  FUNC5 (NULL_TREE, gpr_save_area_size));
      FUNC6 (t, const0_rtx, VOIDmode, EXPAND_NORMAL);

      /* Likewise emit code to initialize FOFF, the offset from FTOP
	 of the next FPR argument.  */
      t = FUNC3 (MODIFY_EXPR, FUNC1 (foff), foff,
		  FUNC5 (NULL_TREE, fpr_save_area_size));
      FUNC6 (t, const0_rtx, VOIDmode, EXPAND_NORMAL);
    }
  else
    {
      nextarg = FUNC8 (nextarg, -cfun->machine->varargs_size);
      FUNC9 (valist, nextarg);
    }
}