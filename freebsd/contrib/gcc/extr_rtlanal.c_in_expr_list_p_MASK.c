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
 scalar_t__ FUNC0 (scalar_t__,int) ; 

int
FUNC1 (rtx listp, rtx node)
{
  rtx x;

  for (x = listp; x; x = FUNC0 (x, 1))
    if (node == FUNC0 (x, 0))
      return 1;

  return 0;
}