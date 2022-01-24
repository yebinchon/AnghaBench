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
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int FUNC0 () ; 

__attribute__((used)) static HOST_WIDE_INT
FUNC1 (void)
{
  static HOST_WIDE_INT set = -1;
  if (set == -1)
    set = FUNC0 ();
  return set;
}