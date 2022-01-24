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
struct extent_buffer {int /*<<< orphan*/  lock; int /*<<< orphan*/  spinning_writers; int /*<<< orphan*/  write_lock_wq; int /*<<< orphan*/  blocking_writers; int /*<<< orphan*/  write_locks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct extent_buffer *eb)
{
	int blockers = FUNC3(&eb->blocking_writers);

	FUNC0(blockers > 1);

	FUNC4(eb);
	FUNC2(&eb->write_locks);

	if (blockers) {
		FUNC1(FUNC3(&eb->spinning_writers));
		FUNC2(&eb->blocking_writers);
		FUNC5();
		FUNC6(&eb->write_lock_wq);
	} else {
		FUNC1(FUNC3(&eb->spinning_writers) != 1);
		FUNC2(&eb->spinning_writers);
		FUNC7(&eb->lock);
	}
}