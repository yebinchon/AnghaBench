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
struct swap_info_struct {int flags; unsigned long cluster_next; int cluster_nr; int pages; int inuse_pages; long lowest_alloc; long max; unsigned long highest_alloc; unsigned long lowest_bit; unsigned long highest_bit; char* swap_map; } ;

/* Variables and functions */
 int LATENCY_LIMIT ; 
 int SWAPFILE_CLUSTER ; 
 char SWAP_HAS_CACHE ; 
 int SWP_DISCARDABLE ; 
 int SWP_DISCARDING ; 
 scalar_t__ SWP_SCANNING ; 
 int SWP_SOLIDSTATE ; 
 int SWP_WRITEOK ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int FUNC0 (struct swap_info_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct swap_info_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  swap_lock ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  wait_for_discard ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned long FUNC11(struct swap_info_struct *si,
					  unsigned char usage)
{
	unsigned long offset;
	unsigned long scan_base;
	unsigned long last_in_cluster = 0;
	int latency_ration = LATENCY_LIMIT;
	int found_free_cluster = 0;

	/*
	 * We try to cluster swap pages by allocating them sequentially
	 * in swap.  Once we've allocated SWAPFILE_CLUSTER pages this
	 * way, however, we resort to first-free allocation, starting
	 * a new cluster.  This prevents us from scattering swap pages
	 * all over the entire swap partition, so that we reduce
	 * overall disk seek times between swap pages.  -- sct
	 * But we do now try to find an empty cluster.  -Andrea
	 * And we let swap pages go all over an SSD partition.  Hugh
	 */

	si->flags += SWP_SCANNING;
	scan_base = offset = si->cluster_next;

	if (FUNC7(!si->cluster_nr--)) {
		if (si->pages - si->inuse_pages < SWAPFILE_CLUSTER) {
			si->cluster_nr = SWAPFILE_CLUSTER - 1;
			goto checks;
		}
		if (si->flags & SWP_DISCARDABLE) {
			/*
			 * Start range check on racing allocations, in case
			 * they overlap the cluster we eventually decide on
			 * (we scan without swap_lock to allow preemption).
			 * It's hardly conceivable that cluster_nr could be
			 * wrapped during our scan, but don't depend on it.
			 */
			if (si->lowest_alloc)
				goto checks;
			si->lowest_alloc = si->max;
			si->highest_alloc = 0;
		}
		FUNC6(&swap_lock);

		/*
		 * If seek is expensive, start searching for new cluster from
		 * start of partition, to minimize the span of allocated swap.
		 * But if seek is cheap, search from our current position, so
		 * that swap is allocated from all over the partition: if the
		 * Flash Translation Layer only remaps within limited zones,
		 * we don't want to wear out the first zone too quickly.
		 */
		if (!(si->flags & SWP_SOLIDSTATE))
			scan_base = offset = si->lowest_bit;
		last_in_cluster = offset + SWAPFILE_CLUSTER - 1;

		/* Locate the first empty (unaligned) cluster */
		for (; last_in_cluster <= si->highest_bit; offset++) {
			if (si->swap_map[offset])
				last_in_cluster = offset + SWAPFILE_CLUSTER;
			else if (offset == last_in_cluster) {
				FUNC5(&swap_lock);
				offset -= SWAPFILE_CLUSTER - 1;
				si->cluster_next = offset;
				si->cluster_nr = SWAPFILE_CLUSTER - 1;
				found_free_cluster = 1;
				goto checks;
			}
			if (FUNC7(--latency_ration < 0)) {
				FUNC1();
				latency_ration = LATENCY_LIMIT;
			}
		}

		offset = si->lowest_bit;
		last_in_cluster = offset + SWAPFILE_CLUSTER - 1;

		/* Locate the first empty (unaligned) cluster */
		for (; last_in_cluster < scan_base; offset++) {
			if (si->swap_map[offset])
				last_in_cluster = offset + SWAPFILE_CLUSTER;
			else if (offset == last_in_cluster) {
				FUNC5(&swap_lock);
				offset -= SWAPFILE_CLUSTER - 1;
				si->cluster_next = offset;
				si->cluster_nr = SWAPFILE_CLUSTER - 1;
				found_free_cluster = 1;
				goto checks;
			}
			if (FUNC7(--latency_ration < 0)) {
				FUNC1();
				latency_ration = LATENCY_LIMIT;
			}
		}

		offset = scan_base;
		FUNC5(&swap_lock);
		si->cluster_nr = SWAPFILE_CLUSTER - 1;
		si->lowest_alloc = 0;
	}

checks:
	if (!(si->flags & SWP_WRITEOK))
		goto no_page;
	if (!si->highest_bit)
		goto no_page;
	if (offset > si->highest_bit)
		scan_base = offset = si->lowest_bit;

	/* reuse swap entry of cache-only swap if not busy. */
	if (FUNC8() && si->swap_map[offset] == SWAP_HAS_CACHE) {
		int swap_was_freed;
		FUNC6(&swap_lock);
		swap_was_freed = FUNC0(si, offset);
		FUNC5(&swap_lock);
		/* entry was freed successfully, try to use this again */
		if (swap_was_freed)
			goto checks;
		goto scan; /* check next one */
	}

	if (si->swap_map[offset])
		goto scan;

	if (offset == si->lowest_bit)
		si->lowest_bit++;
	if (offset == si->highest_bit)
		si->highest_bit--;
	si->inuse_pages++;
	if (si->inuse_pages == si->pages) {
		si->lowest_bit = si->max;
		si->highest_bit = 0;
	}
	si->swap_map[offset] = usage;
	si->cluster_next = offset + 1;
	si->flags -= SWP_SCANNING;

	if (si->lowest_alloc) {
		/*
		 * Only set when SWP_DISCARDABLE, and there's a scan
		 * for a free cluster in progress or just completed.
		 */
		if (found_free_cluster) {
			/*
			 * To optimize wear-levelling, discard the
			 * old data of the cluster, taking care not to
			 * discard any of its pages that have already
			 * been allocated by racing tasks (offset has
			 * already stepped over any at the beginning).
			 */
			if (offset < si->highest_alloc &&
			    si->lowest_alloc <= last_in_cluster)
				last_in_cluster = si->lowest_alloc - 1;
			si->flags |= SWP_DISCARDING;
			FUNC6(&swap_lock);

			if (offset < last_in_cluster)
				FUNC2(si, offset,
					last_in_cluster - offset + 1);

			FUNC5(&swap_lock);
			si->lowest_alloc = 0;
			si->flags &= ~SWP_DISCARDING;

			FUNC4();	/* wake_up_bit advises this */
			FUNC10(&si->flags, FUNC3(SWP_DISCARDING));

		} else if (si->flags & SWP_DISCARDING) {
			/*
			 * Delay using pages allocated by racing tasks
			 * until the whole discard has been issued. We
			 * could defer that delay until swap_writepage,
			 * but it's easier to keep this self-contained.
			 */
			FUNC6(&swap_lock);
			FUNC9(&si->flags, FUNC3(SWP_DISCARDING),
				wait_for_discard, TASK_UNINTERRUPTIBLE);
			FUNC5(&swap_lock);
		} else {
			/*
			 * Note pages allocated by racing tasks while
			 * scan for a free cluster is in progress, so
			 * that its final discard can exclude them.
			 */
			if (offset < si->lowest_alloc)
				si->lowest_alloc = offset;
			if (offset > si->highest_alloc)
				si->highest_alloc = offset;
		}
	}
	return offset;

scan:
	FUNC6(&swap_lock);
	while (++offset <= si->highest_bit) {
		if (!si->swap_map[offset]) {
			FUNC5(&swap_lock);
			goto checks;
		}
		if (FUNC8() && si->swap_map[offset] == SWAP_HAS_CACHE) {
			FUNC5(&swap_lock);
			goto checks;
		}
		if (FUNC7(--latency_ration < 0)) {
			FUNC1();
			latency_ration = LATENCY_LIMIT;
		}
	}
	offset = si->lowest_bit;
	while (++offset < scan_base) {
		if (!si->swap_map[offset]) {
			FUNC5(&swap_lock);
			goto checks;
		}
		if (FUNC8() && si->swap_map[offset] == SWAP_HAS_CACHE) {
			FUNC5(&swap_lock);
			goto checks;
		}
		if (FUNC7(--latency_ration < 0)) {
			FUNC1();
			latency_ration = LATENCY_LIMIT;
		}
	}
	FUNC5(&swap_lock);

no_page:
	si->flags -= SWP_SCANNING;
	return 0;
}