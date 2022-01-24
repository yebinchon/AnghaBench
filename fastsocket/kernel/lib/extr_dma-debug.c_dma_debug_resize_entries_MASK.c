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
typedef  scalar_t__ u32 ;
struct dma_debug_entry {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dma_debug_entry* FUNC1 () ; 
 int /*<<< orphan*/  free_entries ; 
 int /*<<< orphan*/  free_entries_lock ; 
 int /*<<< orphan*/  FUNC2 (struct dma_debug_entry*) ; 
 struct dma_debug_entry* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ nr_total_entries ; 
 int num_free_entries ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tmp ; 

int FUNC9(u32 num_entries)
{
	int i, delta, ret = 0;
	unsigned long flags;
	struct dma_debug_entry *entry;
	FUNC0(tmp);

	FUNC7(&free_entries_lock, flags);

	if (nr_total_entries < num_entries) {
		delta = num_entries - nr_total_entries;

		FUNC8(&free_entries_lock, flags);

		for (i = 0; i < delta; i++) {
			entry = FUNC3(sizeof(*entry), GFP_KERNEL);
			if (!entry)
				break;

			FUNC4(&entry->list, &tmp);
		}

		FUNC7(&free_entries_lock, flags);

		FUNC6(&tmp, &free_entries);
		nr_total_entries += i;
		num_free_entries += i;
	} else {
		delta = nr_total_entries - num_entries;

		for (i = 0; i < delta && !FUNC5(&free_entries); i++) {
			entry = FUNC1();
			FUNC2(entry);
		}

		nr_total_entries -= i;
	}

	if (nr_total_entries != num_entries)
		ret = 1;

	FUNC8(&free_entries_lock, flags);

	return ret;
}