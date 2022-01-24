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
struct rds_iw_connection {int /*<<< orphan*/  iw_node; TYPE_1__* rds_iwdev; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_2__ {int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  iw_nodev_conns_lock ; 
 int /*<<< orphan*/  FUNC0 (struct rds_iw_connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct rds_iw_connection*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void *arg)
{
	struct rds_iw_connection *ic = arg;
	spinlock_t	*lock_ptr;

	FUNC2("ic %p\n", ic);

	/*
	 * Conn is either on a dev's list or on the nodev list.
	 * A race with shutdown() or connect() would cause problems
	 * (since rds_iwdev would change) but that should never happen.
	 */
	lock_ptr = ic->rds_iwdev ? &ic->rds_iwdev->spinlock : &iw_nodev_conns_lock;

	FUNC3(lock_ptr);
	FUNC1(&ic->iw_node);
	FUNC4(lock_ptr);

	FUNC0(ic);
}