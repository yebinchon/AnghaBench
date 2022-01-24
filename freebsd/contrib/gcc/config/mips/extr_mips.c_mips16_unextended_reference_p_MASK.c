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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ TARGET_MIPS16 ; 
 scalar_t__ stack_pointer_rtx ; 

__attribute__((used)) static bool
FUNC3 (enum machine_mode mode, rtx base, rtx offset)
{
  if (TARGET_MIPS16
      && FUNC0 (offset) == CONST_INT
      && FUNC2 (offset) >= 0
      && (FUNC2 (offset) & (FUNC1 (mode) - 1)) == 0)
    {
      if (FUNC1 (mode) == 4 && base == stack_pointer_rtx)
	return FUNC2 (offset) < 256 * FUNC1 (mode);
      return FUNC2 (offset) < 32 * FUNC1 (mode);
    }
  return false;
}