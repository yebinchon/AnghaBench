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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int* reg_avail_info ; 

__attribute__((used)) static bool
FUNC2 (rtx x, int cuid)
{
  unsigned int regno, end_regno;

  regno = FUNC1 (x);
  end_regno = FUNC0 (x);
  do
    if (reg_avail_info[regno] > cuid)
      return true;
  while (++regno < end_regno);
  return false;
}