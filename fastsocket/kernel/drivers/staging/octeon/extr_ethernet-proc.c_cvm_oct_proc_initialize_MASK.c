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
struct proc_dir_entry {int /*<<< orphan*/ * proc_fops; } ;

/* Variables and functions */
 struct proc_dir_entry* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cvm_oct_stats_operations ; 

void FUNC1(void)
{
	struct proc_dir_entry *entry =
	    FUNC0("octeon_ethernet_stats", 0, NULL);
	if (entry)
		entry->proc_fops = &cvm_oct_stats_operations;
}