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
typedef  size_t u32 ;
struct reference {size_t ref; int /*<<< orphan*/  lock; void* object; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_2__ {int first_free; size_t index_mask; scalar_t__ init_point; scalar_t__ capacity; size_t start_mask; struct reference* entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ref_table_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ tipc_ref_table ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

u32 FUNC5(void *object, spinlock_t **lock)
{
	struct reference *entry;
	u32 index;
	u32 index_mask;
	u32 next_plus_upper;
	u32 ref;

	if (!object) {
		FUNC0("Attempt to acquire reference to non-existent object\n");
		return 0;
	}
	if (!tipc_ref_table.entries) {
		FUNC0("Reference table not found during acquisition attempt\n");
		return 0;
	}

	/* take a free entry, if available; otherwise initialize a new entry */

	FUNC3(&ref_table_lock);
	if (tipc_ref_table.first_free) {
		index = tipc_ref_table.first_free;
		entry = &(tipc_ref_table.entries[index]);
		index_mask = tipc_ref_table.index_mask;
		/* take lock in case a previous user of entry still holds it */
		FUNC1(&entry->lock);
		next_plus_upper = entry->ref;
		tipc_ref_table.first_free = next_plus_upper & index_mask;
		ref = (next_plus_upper & ~index_mask) + index;
		entry->ref = ref;
		entry->object = object;
		*lock = &entry->lock;
	}
	else if (tipc_ref_table.init_point < tipc_ref_table.capacity) {
		index = tipc_ref_table.init_point++;
		entry = &(tipc_ref_table.entries[index]);
		FUNC2(&entry->lock);
		FUNC1(&entry->lock);
		ref = tipc_ref_table.start_mask + index;
		entry->ref = ref;
		entry->object = object;
		*lock = &entry->lock;
	}
	else {
		ref = 0;
	}
	FUNC4(&ref_table_lock);

	return ref;
}