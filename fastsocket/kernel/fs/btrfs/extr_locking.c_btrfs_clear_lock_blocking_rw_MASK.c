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
struct extent_buffer {scalar_t__ lock_owner; int /*<<< orphan*/  read_lock_wq; int /*<<< orphan*/  blocking_readers; int /*<<< orphan*/  spinning_readers; int /*<<< orphan*/  lock; int /*<<< orphan*/  write_lock_wq; int /*<<< orphan*/  blocking_writers; int /*<<< orphan*/  spinning_writers; scalar_t__ lock_nested; } ;
struct TYPE_2__ {scalar_t__ pid; } ;

/* Variables and functions */
 int BTRFS_READ_LOCK_BLOCKING ; 
 int BTRFS_WRITE_LOCK_BLOCKING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct extent_buffer *eb, int rw)
{
	if (eb->lock_nested) {
		FUNC5(&eb->lock);
		if (&eb->lock_nested && current->pid == eb->lock_owner) {
			FUNC6(&eb->lock);
			return;
		}
		FUNC6(&eb->lock);
	}
	if (rw == BTRFS_WRITE_LOCK_BLOCKING) {
		FUNC0(FUNC4(&eb->blocking_writers) != 1);
		FUNC8(&eb->lock);
		FUNC1(FUNC4(&eb->spinning_writers));
		FUNC3(&eb->spinning_writers);
		if (FUNC2(&eb->blocking_writers))
			FUNC7(&eb->write_lock_wq);
	} else if (rw == BTRFS_READ_LOCK_BLOCKING) {
		FUNC0(FUNC4(&eb->blocking_readers) == 0);
		FUNC5(&eb->lock);
		FUNC3(&eb->spinning_readers);
		if (FUNC2(&eb->blocking_readers))
			FUNC7(&eb->read_lock_wq);
	}
	return;
}