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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  o2hb_callback_sem ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,unsigned int) ; 
 int /*<<< orphan*/  o2hb_live_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(unsigned long *map, unsigned bytes)
{
	/* callers want to serialize this map and callbacks so that they
	 * can trust that they don't miss nodes coming to the party */
	FUNC0(&o2hb_callback_sem);
	FUNC2(&o2hb_live_lock);
	FUNC1(map, bytes);
	FUNC3(&o2hb_live_lock);
	FUNC4(&o2hb_callback_sem);
}