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
struct extent_buffer {int /*<<< orphan*/  spinning_readers; int /*<<< orphan*/  read_locks; int /*<<< orphan*/  lock; int /*<<< orphan*/  blocking_writers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct extent_buffer *eb)
{
	if (FUNC1(&eb->blocking_writers))
		return 0;

	FUNC2(&eb->lock);
	if (FUNC1(&eb->blocking_writers)) {
		FUNC3(&eb->lock);
		return 0;
	}
	FUNC0(&eb->read_locks);
	FUNC0(&eb->spinning_readers);
	return 1;
}