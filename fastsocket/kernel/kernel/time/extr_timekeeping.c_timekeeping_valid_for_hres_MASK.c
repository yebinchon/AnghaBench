#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* clock; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int CLOCK_SOURCE_VALID_FOR_HRES ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_2__ timekeeper ; 

int FUNC2(void)
{
	unsigned long seq;
	int ret;

	do {
		seq = FUNC0(&timekeeper.lock);

		ret = timekeeper.clock->flags & CLOCK_SOURCE_VALID_FOR_HRES;

	} while (FUNC1(&timekeeper.lock, seq));

	return ret;
}