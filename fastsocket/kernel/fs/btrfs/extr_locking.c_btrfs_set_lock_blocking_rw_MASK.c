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
struct extent_buffer {scalar_t__ lock_owner; int /*<<< orphan*/  lock; int /*<<< orphan*/  spinning_readers; int /*<<< orphan*/  blocking_readers; int /*<<< orphan*/  blocking_writers; int /*<<< orphan*/  spinning_writers; scalar_t__ lock_nested; } ;
struct TYPE_2__ {scalar_t__ pid; } ;

/* Variables and functions */
 int BTRFS_READ_LOCK ; 
 int BTRFS_WRITE_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct extent_buffer *eb, int rw)
{
	if (eb->lock_nested) {
		FUNC6(&eb->lock);
		if (eb->lock_nested && current->pid == eb->lock_owner) {
			FUNC7(&eb->lock);
			return;
		}
		FUNC7(&eb->lock);
	}
	if (rw == BTRFS_WRITE_LOCK) {
		if (FUNC3(&eb->blocking_writers) == 0) {
			FUNC0(FUNC3(&eb->spinning_writers) != 1);
			FUNC1(&eb->spinning_writers);
			FUNC4(eb);
			FUNC2(&eb->blocking_writers);
			FUNC8(&eb->lock);
		}
	} else if (rw == BTRFS_READ_LOCK) {
		FUNC5(eb);
		FUNC2(&eb->blocking_readers);
		FUNC0(FUNC3(&eb->spinning_readers) == 0);
		FUNC1(&eb->spinning_readers);
		FUNC7(&eb->lock);
	}
	return;
}