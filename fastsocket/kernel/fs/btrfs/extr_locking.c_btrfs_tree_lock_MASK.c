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
struct extent_buffer {int /*<<< orphan*/  lock_owner; int /*<<< orphan*/  write_locks; int /*<<< orphan*/  spinning_writers; int /*<<< orphan*/  blocking_writers; int /*<<< orphan*/  write_lock_wq; int /*<<< orphan*/  lock; int /*<<< orphan*/  blocking_readers; int /*<<< orphan*/  read_lock_wq; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct extent_buffer *eb)
{
again:
	FUNC3(eb->read_lock_wq, FUNC2(&eb->blocking_readers) == 0);
	FUNC3(eb->write_lock_wq, FUNC2(&eb->blocking_writers) == 0);
	FUNC4(&eb->lock);
	if (FUNC2(&eb->blocking_readers)) {
		FUNC5(&eb->lock);
		FUNC3(eb->read_lock_wq,
			   FUNC2(&eb->blocking_readers) == 0);
		goto again;
	}
	if (FUNC2(&eb->blocking_writers)) {
		FUNC5(&eb->lock);
		FUNC3(eb->write_lock_wq,
			   FUNC2(&eb->blocking_writers) == 0);
		goto again;
	}
	FUNC0(FUNC2(&eb->spinning_writers));
	FUNC1(&eb->spinning_writers);
	FUNC1(&eb->write_locks);
	eb->lock_owner = current->pid;
}