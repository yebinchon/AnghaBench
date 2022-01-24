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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
#define  ACCESS_REGS 132 
#define  ADDR_REGS 131 
#define  CC_REGS 130 
 int DImode ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  FP_REGS 129 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
#define  GENERAL_REGS 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  MODE_CC ; 
 int /*<<< orphan*/  MODE_VECTOR_FLOAT ; 
 int Pmode ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int) ; 
 int FUNC4 (unsigned int) ; 
 int SImode ; 
 int /*<<< orphan*/  TARGET_64BIT ; 
 int TCmode ; 
 int TDmode ; 
 int TFmode ; 

bool
FUNC5 (unsigned int regno, enum machine_mode mode)
{
  switch (FUNC4 (regno))
    {
    case FP_REGS:
      if (FUNC3 (regno, mode))
	{
	  if (mode == SImode || mode == DImode)
	    return true;

	  if (FUNC0 (mode) && FUNC2 (mode) != MODE_VECTOR_FLOAT)
	    return true;
	}
      break;
    case ADDR_REGS:
      if (FUNC1 (regno) && mode == Pmode)
	return true;

      /* fallthrough */
    case GENERAL_REGS:
      if (FUNC3 (regno, mode))
	{
	  if (TARGET_64BIT 
	      || (mode != TFmode && mode != TCmode && mode != TDmode))
	    return true;
	}	  
      break;
    case CC_REGS:
      if (FUNC2 (mode) == MODE_CC)
	return true;
      break;
    case ACCESS_REGS:
      if (FUNC3 (regno, mode))
	{
	  if (mode == SImode || mode == Pmode)
	    return true;
	}
      break;
    default:
      return false;
    }
  
  return false;
}