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
#define  AR_I_REGS 131 
#define  AR_M_REGS 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  FP_REGS 129 
#define  FR_REGS 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int NO_REGS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

enum reg_class
FUNC4 (rtx x, enum reg_class class)
{
  switch (class)
    {
    case FR_REGS:
    case FP_REGS:
      /* Don't allow volatile mem reloads into floating point registers.
	 This is defined to force reload to choose the r/m case instead
	 of the f/f case when reloading (set (reg fX) (mem/v)).  */
      if (FUNC1 (x) && FUNC2 (x))
	return NO_REGS;
      
      /* Force all unrecognized constants into the constant pool.  */
      if (FUNC0 (x))
	return NO_REGS;
      break;

    case AR_M_REGS:
    case AR_I_REGS:
      if (!FUNC3 (x))
	return NO_REGS;
      break;

    default:
      break;
    }

  return class;
}