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
struct kmem_list3 {int /*<<< orphan*/  list_lock; } ;
struct kmem_cache {int dummy; } ;
struct array_cache {int avail; int limit; int /*<<< orphan*/ * entry; scalar_t__ touched; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kmem_cache*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct kmem_cache *cachep, struct kmem_list3 *l3,
			 struct array_cache *ac, int force, int node)
{
	int tofree;

	if (!ac || !ac->avail)
		return;
	if (ac->touched && !force) {
		ac->touched = 0;
	} else {
		FUNC2(&l3->list_lock);
		if (ac->avail) {
			tofree = force ? ac->avail : (ac->limit + 4) / 5;
			if (tofree > ac->avail)
				tofree = (ac->avail + 1) / 2;
			FUNC0(cachep, ac->entry, tofree, node);
			ac->avail -= tofree;
			FUNC1(ac->entry, &(ac->entry[tofree]),
				sizeof(void *) * ac->avail);
		}
		FUNC3(&l3->list_lock);
	}
}