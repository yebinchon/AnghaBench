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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  jiffies_64 ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  xtime_lock ; 

u64 FUNC2(void)
{
	unsigned long seq;
	u64 ret;

	do {
		seq = FUNC0(&xtime_lock);
		ret = jiffies_64;
	} while (FUNC1(&xtime_lock, seq));
	return ret;
}