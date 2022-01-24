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
struct extent_buffer {scalar_t__ lock_owner; int /*<<< orphan*/  lock; int /*<<< orphan*/  read_locks; int /*<<< orphan*/  spinning_readers; scalar_t__ lock_nested; } ;
struct TYPE_2__ {scalar_t__ pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct extent_buffer *eb)
{
	if (eb->lock_nested) {
		FUNC4(&eb->lock);
		if (eb->lock_nested && current->pid == eb->lock_owner) {
			eb->lock_nested = 0;
			FUNC5(&eb->lock);
			return;
		}
		FUNC5(&eb->lock);
	}
	FUNC3(eb);
	FUNC0(FUNC2(&eb->spinning_readers) == 0);
	FUNC1(&eb->spinning_readers);
	FUNC1(&eb->read_locks);
	FUNC5(&eb->lock);
}