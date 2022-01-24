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
struct temp_slot {int addr_taken; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct temp_slot* FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4 (rtx x)
{
  struct temp_slot *p;

  if (x == 0)
    return;

  /* If X is not in memory or is at a constant address, it cannot be in
     a temporary slot.  */
  if (!FUNC1 (x) || FUNC0 (FUNC2 (x, 0)))
    return;

  p = FUNC3 (FUNC2 (x, 0));
  if (p != 0)
    p->addr_taken = 1;
}