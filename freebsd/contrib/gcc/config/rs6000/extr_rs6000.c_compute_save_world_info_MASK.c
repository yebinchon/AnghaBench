#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
struct TYPE_4__ {int world_save_p; scalar_t__ first_fp_reg_save; scalar_t__ first_gp_reg_save; scalar_t__ first_altivec_reg_save; int vrsave_size; scalar_t__ vrsave_mask; scalar_t__ cr_save_p; } ;
typedef  TYPE_1__ rs6000_stack_t ;

/* Variables and functions */
 scalar_t__ ABI_DARWIN ; 
 scalar_t__ CALL_INSN ; 
 scalar_t__ DEFAULT_ABI ; 
 scalar_t__ FIRST_SAVED_ALTIVEC_REGNO ; 
 scalar_t__ FIRST_SAVED_FP_REGNO ; 
 scalar_t__ FIRST_SAVED_GP_REGNO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ current_function_calls_setjmp ; 
 scalar_t__ flag_exceptions ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static void
FUNC7 (rs6000_stack_t *info_ptr)
{
  info_ptr->world_save_p = 1;
  info_ptr->world_save_p
    = (FUNC3 (info_ptr)
       && DEFAULT_ABI == ABI_DARWIN
       && ! (current_function_calls_setjmp && flag_exceptions)
       && info_ptr->first_fp_reg_save == FIRST_SAVED_FP_REGNO
       && info_ptr->first_gp_reg_save == FIRST_SAVED_GP_REGNO
       && info_ptr->first_altivec_reg_save == FIRST_SAVED_ALTIVEC_REGNO
       && info_ptr->cr_save_p);

  /* This will not work in conjunction with sibcalls.  Make sure there
     are none.  (This check is expensive, but seldom executed.) */
  if (FUNC3 (info_ptr))
    {
      rtx insn;
      for ( insn = FUNC6 (); insn; insn = FUNC1 (insn))
	if ( FUNC0 (insn) == CALL_INSN
	     && FUNC2 (insn))
	  {
	    info_ptr->world_save_p = 0;
	    break;
	  }
    }

  if (FUNC3 (info_ptr))
    {
      /* Even if we're not touching VRsave, make sure there's room on the
	 stack for it, if it looks like we're calling SAVE_WORLD, which
	 will attempt to save it. */
      info_ptr->vrsave_size  = 4;

      /* "Save" the VRsave register too if we're saving the world.  */
      if (info_ptr->vrsave_mask == 0)
	info_ptr->vrsave_mask = FUNC4 ();

      /* Because the Darwin register save/restore routines only handle
	 F14 .. F31 and V20 .. V31 as per the ABI, perform a consistency
	 check.  */
      FUNC5 (info_ptr->first_fp_reg_save >= FIRST_SAVED_FP_REGNO
		  && (info_ptr->first_altivec_reg_save
		      >= FIRST_SAVED_ALTIVEC_REGNO));
    }
  return;
}