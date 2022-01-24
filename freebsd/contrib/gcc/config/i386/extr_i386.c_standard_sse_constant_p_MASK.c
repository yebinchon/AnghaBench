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
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ TARGET_SSE2 ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 

int
FUNC4 (rtx x)
{
  enum machine_mode mode = FUNC1 (x);

  if (x == const0_rtx || x == FUNC0 (FUNC1 (x)))
    return 1;
  if (FUNC3 (x, mode)
      && FUNC2 (mode))
    return TARGET_SSE2 ? 2 : -1;

  return 0;
}