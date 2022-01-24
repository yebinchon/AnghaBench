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
struct perf_evlist {TYPE_1__* mmap; int /*<<< orphan*/  mmap_len; } ;
struct TYPE_2__ {int mask; int /*<<< orphan*/ * base; scalar_t__ prev; } ;

/* Variables and functions */
 int /*<<< orphan*/ * MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_evlist*,int) ; 

__attribute__((used)) static int FUNC2(struct perf_evlist *evlist,
			       int idx, int prot, int mask, int fd)
{
	evlist->mmap[idx].prev = 0;
	evlist->mmap[idx].mask = mask;
	evlist->mmap[idx].base = FUNC0(NULL, evlist->mmap_len, prot,
				      MAP_SHARED, fd, 0);
	if (evlist->mmap[idx].base == MAP_FAILED) {
		evlist->mmap[idx].base = NULL;
		return -1;
	}

	FUNC1(evlist, fd);
	return 0;
}