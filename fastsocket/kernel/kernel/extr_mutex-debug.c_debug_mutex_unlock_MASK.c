#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  next; int /*<<< orphan*/  prev; } ;
struct mutex {scalar_t__ owner; TYPE_1__ wait_list; struct mutex* magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  debug_locks ; 
 int /*<<< orphan*/  FUNC2 (struct mutex*) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(struct mutex *lock)
{
	if (FUNC3(!debug_locks))
		return;

	FUNC0(lock->magic != lock);
	FUNC0(lock->owner != FUNC1());
	FUNC0(!lock->wait_list.prev && !lock->wait_list.next);
	FUNC2(lock);
}