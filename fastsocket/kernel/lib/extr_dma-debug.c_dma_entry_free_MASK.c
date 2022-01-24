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
struct dma_debug_entry {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  free_entries ; 
 int /*<<< orphan*/  free_entries_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int num_free_entries ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct dma_debug_entry *entry)
{
	unsigned long flags;

	/*
	 * add to beginning of the list - this way the entries are
	 * more likely cache hot when they are reallocated.
	 */
	FUNC1(&free_entries_lock, flags);
	FUNC0(&entry->list, &free_entries);
	num_free_entries += 1;
	FUNC2(&free_entries_lock, flags);
}