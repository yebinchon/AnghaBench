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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 TYPE_1__* dma_entry_hash ; 
 int global_disable ; 
 int /*<<< orphan*/  nr_total_entries ; 
 int /*<<< orphan*/  num_free_entries ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ req_entries ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(u32 num_entries)
{
	int i;

	if (global_disable)
		return;

	for (i = 0; i < HASH_SIZE; ++i) {
		FUNC0(&dma_entry_hash[i].list);
		FUNC5(&dma_entry_hash[i].lock);
	}

	if (FUNC1() != 0) {
		FUNC2("DMA-API: error creating debugfs entries - disabling\n");
		global_disable = true;

		return;
	}

	if (req_entries)
		num_entries = req_entries;

	if (FUNC4(num_entries) != 0) {
		FUNC2("DMA-API: debugging out of memory error - disabled\n");
		global_disable = true;

		return;
	}

	nr_total_entries = num_free_entries;

	FUNC3("DMA-API: debugging enabled by kernel config\n");
}