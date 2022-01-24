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
typedef  enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
#define  ACCESS_REGS 129 
#define  FP_REGS 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  MODE_COMPLEX_FLOAT ; 
 int UNITS_PER_WORD ; 

bool
FUNC2 (enum reg_class class, enum machine_mode mode)
{
  switch (class)
    {
    case FP_REGS:
      if (FUNC0 (mode) == MODE_COMPLEX_FLOAT)
	return 2 * ((FUNC1 (mode) / 2 + 8 - 1) / 8);
      else
	return (FUNC1 (mode) + 8 - 1) / 8;
    case ACCESS_REGS:
      return (FUNC1 (mode) + 4 - 1) / 4;
    default:
      break;
    }
  return (FUNC1 (mode) + UNITS_PER_WORD - 1) / UNITS_PER_WORD;
}