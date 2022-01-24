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
struct TYPE_2__ {int skip; int /*<<< orphan*/  entries; int /*<<< orphan*/  max_entries; } ;
struct dma_debug_entry {TYPE_1__ stacktrace; int /*<<< orphan*/  st_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_DEBUG_STACKTRACE_ENTRIES ; 
 struct dma_debug_entry* FUNC0 () ; 
 int /*<<< orphan*/  free_entries ; 
 int /*<<< orphan*/  free_entries_lock ; 
 int global_disable ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct dma_debug_entry *FUNC6(void)
{
	struct dma_debug_entry *entry = NULL;
	unsigned long flags;

	FUNC4(&free_entries_lock, flags);

	if (FUNC1(&free_entries)) {
		FUNC2("DMA-API: debugging out of memory - disabling\n");
		global_disable = true;
		goto out;
	}

	entry = FUNC0();

#ifdef CONFIG_STACKTRACE
	entry->stacktrace.max_entries = DMA_DEBUG_STACKTRACE_ENTRIES;
	entry->stacktrace.entries = entry->st_entries;
	entry->stacktrace.skip = 2;
	save_stack_trace(&entry->stacktrace);
#endif

out:
	FUNC5(&free_entries_lock, flags);

	return entry;
}