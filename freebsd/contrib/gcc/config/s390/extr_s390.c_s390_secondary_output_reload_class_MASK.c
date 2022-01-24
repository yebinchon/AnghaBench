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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int ADDR_REGS ; 
 int CC_REGS ; 
 scalar_t__ CONST_INT ; 
 int DFmode ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int DImode ; 
 int FP_REGS ; 
 int GENERAL_REGS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ MEM ; 
 int NO_REGS ; 
 scalar_t__ PLUS ; 
 scalar_t__ TARGET_64BIT ; 
 int TFmode ; 
 int TImode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int,int) ; 

enum reg_class
FUNC6 (enum reg_class class,
				    enum machine_mode mode, rtx out)
{
  if ((TARGET_64BIT ? (mode == TImode || mode == TFmode)
                    : (mode == DImode || mode == DFmode))
      && FUNC5 (GENERAL_REGS, class)
      && FUNC1 (out) == MEM
      && FUNC1 (FUNC4 (out, 0)) == PLUS
      && FUNC1 (FUNC4 (FUNC4 (out, 0), 0)) == PLUS
      && FUNC1 (FUNC4 (FUNC4 (out, 0), 1)) == CONST_INT
      && !FUNC0 (FUNC3 (FUNC4 (FUNC4 (out, 0), 1))
			 + FUNC2 (mode) - 1))
    return ADDR_REGS;

  if (FUNC5 (FP_REGS, class)
      && mode == TFmode
      && FUNC1 (out) == MEM
      && FUNC1 (FUNC4 (out, 0)) == PLUS
      && FUNC1 (FUNC4 (FUNC4 (out, 0), 1)) == CONST_INT
      && !FUNC0 (FUNC3 (FUNC4 (FUNC4 (out, 0), 1))
			 + FUNC2 (mode) - 1))
    return ADDR_REGS;

  if (FUNC5 (CC_REGS, class))
    return GENERAL_REGS;

  return NO_REGS;
}