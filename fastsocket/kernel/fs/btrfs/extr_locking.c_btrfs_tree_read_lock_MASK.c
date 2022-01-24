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
struct extent_buffer {scalar_t__ lock_owner; int lock_nested; int /*<<< orphan*/  spinning_readers; int /*<<< orphan*/  read_locks; int /*<<< orphan*/  lock; int /*<<< orphan*/  blocking_writers; int /*<<< orphan*/  write_lock_wq; } ;
struct TYPE_2__ {scalar_t__ pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(struct extent_buffer *eb)
{
again:
	FUNC3(&eb->lock);
	if (FUNC2(&eb->blocking_writers) &&
	    current->pid == eb->lock_owner) {
		/*
		 * This extent is already write-locked by our thread. We allow
		 * an additional read lock to be added because it's for the same
		 * thread. btrfs_find_all_roots() depends on this as it may be
		 * called on a partly (write-)locked tree.
		 */
		FUNC0(eb->lock_nested);
		eb->lock_nested = 1;
		FUNC4(&eb->lock);
		return;
	}
	FUNC4(&eb->lock);
	FUNC5(eb->write_lock_wq, FUNC2(&eb->blocking_writers) == 0);
	FUNC3(&eb->lock);
	if (FUNC2(&eb->blocking_writers)) {
		FUNC4(&eb->lock);
		goto again;
	}
	FUNC1(&eb->read_locks);
	FUNC1(&eb->spinning_readers);
}