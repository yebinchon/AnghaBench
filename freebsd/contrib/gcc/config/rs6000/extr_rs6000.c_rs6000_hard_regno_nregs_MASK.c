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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int SCmode ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ TARGET_E500_DOUBLE ; 
 scalar_t__ TARGET_SPE ; 
 int UNITS_PER_ALTIVEC_WORD ; 
 int UNITS_PER_FP_WORD ; 
 int UNITS_PER_SPE_WORD ; 
 int UNITS_PER_WORD ; 

int
FUNC6 (int regno, enum machine_mode mode)
{
  if (FUNC2 (regno))
    return (FUNC3 (mode) + UNITS_PER_FP_WORD - 1) / UNITS_PER_FP_WORD;

  if (FUNC4 (regno) && TARGET_SPE && FUNC5 (mode))
    return (FUNC3 (mode) + UNITS_PER_SPE_WORD - 1) / UNITS_PER_SPE_WORD;

  if (FUNC0 (regno))
    return
      (FUNC3 (mode) + UNITS_PER_ALTIVEC_WORD - 1) / UNITS_PER_ALTIVEC_WORD;

  /* The value returned for SCmode in the E500 double case is 2 for
     ABI compatibility; storing an SCmode value in a single register
     would require function_arg and rs6000_spe_function_arg to handle
     SCmode so as to pass the value correctly in a pair of
     registers.  */
  if (TARGET_E500_DOUBLE && FUNC1 (mode) && mode != SCmode)
    return (FUNC3 (mode) + UNITS_PER_FP_WORD - 1) / UNITS_PER_FP_WORD;

  return (FUNC3 (mode) + UNITS_PER_WORD - 1) / UNITS_PER_WORD;
}