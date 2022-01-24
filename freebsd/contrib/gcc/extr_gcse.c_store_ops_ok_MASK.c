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

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static bool
FUNC2 (rtx x, int *regs_set)
{
  rtx reg;

  for (; x; x = FUNC1 (x, 1))
    {
      reg = FUNC1 (x, 0);
      if (regs_set[FUNC0(reg)])
	return false;
    }

  return true;
}