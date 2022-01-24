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
typedef  scalar_t__ rtx ;
typedef  enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__** hard_regno_nregs ; 
 int /*<<< orphan*/ * reg_class_contents ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 

__attribute__((used)) static bool
FUNC5 (rtx *reload_reg, rtx alt_reload_reg,
			    enum reg_class new_class,
			    enum machine_mode new_mode)

{
  rtx reg;

  for (reg = *reload_reg; reg; reg = alt_reload_reg, alt_reload_reg = 0)
    {
      unsigned regno = FUNC2 (reg);

      if (!FUNC3 (reg_class_contents[(int) new_class], regno))
	continue;
      if (FUNC0 (reg) != new_mode)
	{
	  if (!FUNC1 (regno, new_mode))
	    continue;
	  if (hard_regno_nregs[regno][new_mode]
	      > hard_regno_nregs[regno][FUNC0 (reg)])
	    continue;
	  reg = FUNC4 (reg, new_mode);
	}
      *reload_reg = reg;
      return true;
    }
  return false;
}