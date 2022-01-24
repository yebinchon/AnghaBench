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
struct perf_evlist {int nr_mmaps; TYPE_1__* mmap; int /*<<< orphan*/  mmap_len; } ;
struct TYPE_2__ {int /*<<< orphan*/ * base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(struct perf_evlist *evlist)
{
	int i;

	for (i = 0; i < evlist->nr_mmaps; i++) {
		if (evlist->mmap[i].base != NULL) {
			FUNC1(evlist->mmap[i].base, evlist->mmap_len);
			evlist->mmap[i].base = NULL;
		}
	}

	FUNC0(evlist->mmap);
	evlist->mmap = NULL;
}