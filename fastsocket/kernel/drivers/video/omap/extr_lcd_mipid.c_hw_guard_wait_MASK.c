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
struct mipid_device {unsigned long hw_guard_end; unsigned long hw_guard_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mipid_device *md)
{
	unsigned long wait = md->hw_guard_end - jiffies;

	if ((long)wait > 0 && wait <= md->hw_guard_wait) {
		FUNC1(TASK_UNINTERRUPTIBLE);
		FUNC0(wait);
	}
}