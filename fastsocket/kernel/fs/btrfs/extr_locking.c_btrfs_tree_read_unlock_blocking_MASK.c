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
struct extent_buffer {scalar_t__ lock_owner; int /*<<< orphan*/  read_locks; int /*<<< orphan*/  read_lock_wq; int /*<<< orphan*/  blocking_readers; int /*<<< orphan*/  lock; scalar_t__ lock_nested; } ;
struct TYPE_2__ {scalar_t__ pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct extent_buffer *eb)
{
	if (eb->lock_nested) {
		FUNC5(&eb->lock);
		if (eb->lock_nested && current->pid == eb->lock_owner) {
			eb->lock_nested = 0;
			FUNC6(&eb->lock);
			return;
		}
		FUNC6(&eb->lock);
	}
	FUNC4(eb);
	FUNC0(FUNC3(&eb->blocking_readers) == 0);
	if (FUNC2(&eb->blocking_readers))
		FUNC7(&eb->read_lock_wq);
	FUNC1(&eb->read_locks);
}