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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FP_REGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int GR_REGS ; 
 int LEA_REGS ; 
 int M16_REGS ; 
 scalar_t__ TARGET_HARD_FLOAT ; 
 scalar_t__ TARGET_MIPS16 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int) ; 

enum reg_class
FUNC4 (rtx x, enum reg_class class)
{
  if (FUNC2 (x) && FUNC3 (LEA_REGS, class))
    return LEA_REGS;

  if (TARGET_HARD_FLOAT
      && FUNC0 (FUNC1 (x))
      && FUNC3 (FP_REGS, class))
    return FP_REGS;

  if (FUNC3 (GR_REGS, class))
    class = GR_REGS;

  if (TARGET_MIPS16 && FUNC3 (M16_REGS, class))
    class = M16_REGS;

  return class;
}