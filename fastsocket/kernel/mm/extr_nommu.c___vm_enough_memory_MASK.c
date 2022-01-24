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
struct mm_struct {int total_vm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NR_FILE_PAGES ; 
 int /*<<< orphan*/  NR_SLAB_RECLAIMABLE ; 
 scalar_t__ OVERCOMMIT_ALWAYS ; 
 scalar_t__ OVERCOMMIT_GUESS ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 () ; 
 scalar_t__ nr_swap_pages ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ sysctl_overcommit_memory ; 
 int sysctl_overcommit_ratio ; 
 scalar_t__ total_swap_pages ; 
 int totalram_pages ; 
 unsigned long totalreserve_pages ; 
 int /*<<< orphan*/  FUNC3 (long) ; 
 int /*<<< orphan*/  vm_committed_as ; 
 int /*<<< orphan*/  FUNC4 (long) ; 

int FUNC5(struct mm_struct *mm, long pages, int cap_sys_admin)
{
	unsigned long free, allowed;

	FUNC3(pages);

	/*
	 * Sometimes we want to use more memory than we have
	 */
	if (sysctl_overcommit_memory == OVERCOMMIT_ALWAYS)
		return 0;

	if (sysctl_overcommit_memory == OVERCOMMIT_GUESS) {
		unsigned long n;

		free = FUNC0(NR_FILE_PAGES);
		free += nr_swap_pages;

		/*
		 * Any slabs which are created with the
		 * SLAB_RECLAIM_ACCOUNT flag claim to have contents
		 * which are reclaimable, under pressure.  The dentry
		 * cache and most inode caches should fall into this
		 */
		free += FUNC0(NR_SLAB_RECLAIMABLE);

		/*
		 * Leave the last 3% for root
		 */
		if (!cap_sys_admin)
			free -= free / 32;

		if (free > pages)
			return 0;

		/*
		 * nr_free_pages() is very expensive on large systems,
		 * only call if we're about to fail.
		 */
		n = FUNC1();

		/*
		 * Leave reserved pages. The pages are not for anonymous pages.
		 */
		if (n <= totalreserve_pages)
			goto error;
		else
			n -= totalreserve_pages;

		/*
		 * Leave the last 3% for root
		 */
		if (!cap_sys_admin)
			n -= n / 32;
		free += n;

		if (free > pages)
			return 0;

		goto error;
	}

	allowed = totalram_pages * sysctl_overcommit_ratio / 100;
	/*
	 * Leave the last 3% for root
	 */
	if (!cap_sys_admin)
		allowed -= allowed / 32;
	allowed += total_swap_pages;

	/* Don't let a single process grow too big:
	   leave 3% of the size of this process for other processes */
	if (mm)
		allowed -= mm->total_vm / 32;

	if (FUNC2(&vm_committed_as) < allowed)
		return 0;

error:
	FUNC4(pages);

	return -ENOMEM;
}