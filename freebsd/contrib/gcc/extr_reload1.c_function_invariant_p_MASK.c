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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ PLUS ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ arg_pointer_rtx ; 
 scalar_t__ frame_pointer_rtx ; 

int
FUNC3 (rtx x)
{
  if (FUNC0 (x))
    return 1;
  if (x == frame_pointer_rtx || x == arg_pointer_rtx)
    return 1;
  if (FUNC1 (x) == PLUS
      && (FUNC2 (x, 0) == frame_pointer_rtx || FUNC2 (x, 0) == arg_pointer_rtx)
      && FUNC0 (FUNC2 (x, 1)))
    return 1;
  return 0;
}