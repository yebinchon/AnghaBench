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
struct extent_buffer {int /*<<< orphan*/  lock_owner; int /*<<< orphan*/  spinning_writers; int /*<<< orphan*/  write_locks; int /*<<< orphan*/  lock; int /*<<< orphan*/  blocking_readers; int /*<<< orphan*/  blocking_writers; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct extent_buffer *eb)
{
	if (FUNC1(&eb->blocking_writers) ||
	    FUNC1(&eb->blocking_readers))
		return 0;
	FUNC2(&eb->lock);
	if (FUNC1(&eb->blocking_writers) ||
	    FUNC1(&eb->blocking_readers)) {
		FUNC3(&eb->lock);
		return 0;
	}
	FUNC0(&eb->write_locks);
	FUNC0(&eb->spinning_writers);
	eb->lock_owner = current->pid;
	return 1;
}