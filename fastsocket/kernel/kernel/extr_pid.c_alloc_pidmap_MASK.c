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
struct pidmap {int /*<<< orphan*/  nr_free; void* page; } ;
struct pid_namespace {int last_pid; struct pidmap* pidmap; } ;

/* Variables and functions */
 int BITS_PER_PAGE ; 
 int BITS_PER_PAGE_MASK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int RESERVED_PIDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pidmap*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pid_namespace*,struct pidmap*,int) ; 
 int pid_max ; 
 int /*<<< orphan*/  pidmap_lock ; 
 int /*<<< orphan*/  FUNC7 (struct pid_namespace*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,void*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct pid_namespace *pid_ns)
{
	int i, offset, max_scan, pid, last = pid_ns->last_pid;
	struct pidmap *map;

	pid = last + 1;
	if (pid >= pid_max)
		pid = RESERVED_PIDS;
	offset = pid & BITS_PER_PAGE_MASK;
	map = &pid_ns->pidmap[pid/BITS_PER_PAGE];
	max_scan = (pid_max + BITS_PER_PAGE - 1)/BITS_PER_PAGE - !offset;
	for (i = 0; i <= max_scan; ++i) {
		if (FUNC11(!map->page)) {
			void *page = FUNC4(PAGE_SIZE, GFP_KERNEL);
			/*
			 * Free the page if someone raced with us
			 * installing it:
			 */
			FUNC8(&pidmap_lock);
			if (map->page)
				FUNC3(page);
			else
				map->page = page;
			FUNC9(&pidmap_lock);
			if (FUNC11(!map->page))
				break;
		}
		if (FUNC5(FUNC1(&map->nr_free))) {
			do {
				if (!FUNC10(offset, map->page)) {
					FUNC0(&map->nr_free);
					FUNC7(pid_ns, last, pid);
					return pid;
				}
				offset = FUNC2(map, offset);
				pid = FUNC6(pid_ns, map, offset);
			/*
			 * find_next_offset() found a bit, the pid from it
			 * is in-bounds, and if we fell back to the last
			 * bitmap block and the final block was the same
			 * as the starting point, pid is before last_pid.
			 */
			} while (offset < BITS_PER_PAGE && pid < pid_max &&
					(i != max_scan || pid < last ||
					    !((last+1) & BITS_PER_PAGE_MASK)));
		}
		if (map < &pid_ns->pidmap[(pid_max-1)/BITS_PER_PAGE]) {
			++map;
			offset = 0;
		} else {
			map = &pid_ns->pidmap[0];
			offset = RESERVED_PIDS;
			if (FUNC11(last == offset))
				break;
		}
		pid = FUNC6(pid_ns, map, offset);
	}
	return -1;
}