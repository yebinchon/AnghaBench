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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct swap_info_struct {int max; int /*<<< orphan*/ * swap_map; } ;
typedef  int pgoff_t ;

/* Variables and functions */
 scalar_t__ SWAP_MAP_BAD ; 
 int page_cluster ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct swap_info_struct** swap_info ; 
 int /*<<< orphan*/  swap_lock ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(swp_entry_t entry, unsigned long *offset)
{
	struct swap_info_struct *si;
	int our_page_cluster = page_cluster;
	pgoff_t target, toff;
	pgoff_t base, end;
	int nr_pages = 0;

	if (!our_page_cluster)	/* no readahead */
		return 0;

	si = swap_info[FUNC4(entry)];
	target = FUNC3(entry);
	base = (target >> our_page_cluster) << our_page_cluster;
	end = base + (1 << our_page_cluster);
	if (!base)		/* first page is swap header */
		base++;

	FUNC0(&swap_lock);
	if (end > si->max)	/* don't go beyond end of map */
		end = si->max;

	/* Count contiguous allocated slots above our target */
	for (toff = target; ++toff < end; nr_pages++) {
		/* Don't read in free or bad pages */
		if (!si->swap_map[toff])
			break;
		if (FUNC2(si->swap_map[toff]) == SWAP_MAP_BAD)
			break;
	}
	/* Count contiguous allocated slots below our target */
	for (toff = target; --toff >= base; nr_pages++) {
		/* Don't read in free or bad pages */
		if (!si->swap_map[toff])
			break;
		if (FUNC2(si->swap_map[toff]) == SWAP_MAP_BAD)
			break;
	}
	FUNC1(&swap_lock);

	/*
	 * Indicate starting offset, and return number of pages to get:
	 * if only 1, say 0, since there's then no readahead to be done.
	 */
	*offset = ++toff;
	return nr_pages? ++nr_pages: 0;
}