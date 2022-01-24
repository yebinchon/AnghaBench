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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int STACK_POINTER_REGNUM ; 
 int /*<<< orphan*/  call_fixed_reg_set ; 
 int* call_fixed_regs ; 
 int* call_really_used_regs ; 
 int /*<<< orphan*/  call_used_reg_set ; 
 int* call_used_regs ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  fixed_reg_set ; 
 int* fixed_regs ; 
 int* global_regs ; 
 scalar_t__ no_global_reg_vars ; 
 int /*<<< orphan*/  regs_invalidated_by_call ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void
FUNC3 (int i)
{
  if (fixed_regs[i] == 0 && no_global_reg_vars)
    FUNC1 ("global register variable follows a function definition");

  if (global_regs[i])
    {
      FUNC2 (0, "register used for two global register variables");
      return;
    }

  if (call_used_regs[i] && ! fixed_regs[i])
    FUNC2 (0, "call-clobbered register used for global register variable");

  global_regs[i] = 1;

  /* If we're globalizing the frame pointer, we need to set the
     appropriate regs_invalidated_by_call bit, even if it's already
     set in fixed_regs.  */
  if (i != STACK_POINTER_REGNUM)
    FUNC0 (regs_invalidated_by_call, i);

  /* If already fixed, nothing else to do.  */
  if (fixed_regs[i])
    return;

  fixed_regs[i] = call_used_regs[i] = call_fixed_regs[i] = 1;
#ifdef CALL_REALLY_USED_REGISTERS
  call_really_used_regs[i] = 1;
#endif

  FUNC0 (fixed_reg_set, i);
  FUNC0 (call_used_reg_set, i);
  FUNC0 (call_fixed_reg_set, i);
}