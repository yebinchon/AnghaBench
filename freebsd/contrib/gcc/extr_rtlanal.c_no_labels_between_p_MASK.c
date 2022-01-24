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

int
FUNC2 (rtx beg, rtx end)
{
  rtx p;
  if (beg == end)
    return 0;
  for (p = FUNC1 (beg); p != end; p = FUNC1 (p))
    if (FUNC0 (p))
      return 0;
  return 1;
}