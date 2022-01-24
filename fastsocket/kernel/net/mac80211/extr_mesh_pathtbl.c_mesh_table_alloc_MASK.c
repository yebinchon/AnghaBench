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
struct mesh_table {int size_order; int hash_mask; int /*<<< orphan*/  gates_lock; int /*<<< orphan*/ * hashwlock; int /*<<< orphan*/  hash_rnd; int /*<<< orphan*/  entries; struct mesh_table* hash_buckets; } ;
struct hlist_head {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mesh_table*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct mesh_table* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mesh_table *FUNC6(int size_order)
{
	int i;
	struct mesh_table *newtbl;

	newtbl = FUNC3(sizeof(struct mesh_table), GFP_ATOMIC);
	if (!newtbl)
		return NULL;

	newtbl->hash_buckets = FUNC4(sizeof(struct hlist_head) *
			(1 << size_order), GFP_ATOMIC);

	if (!newtbl->hash_buckets) {
		FUNC2(newtbl);
		return NULL;
	}

	newtbl->hashwlock = FUNC3(sizeof(spinlock_t) *
			(1 << size_order), GFP_ATOMIC);
	if (!newtbl->hashwlock) {
		FUNC2(newtbl->hash_buckets);
		FUNC2(newtbl);
		return NULL;
	}

	newtbl->size_order = size_order;
	newtbl->hash_mask = (1 << size_order) - 1;
	FUNC0(&newtbl->entries,  0);
	FUNC1(&newtbl->hash_rnd,
			sizeof(newtbl->hash_rnd));
	for (i = 0; i <= newtbl->hash_mask; i++)
		FUNC5(&newtbl->hashwlock[i]);
	FUNC5(&newtbl->gates_lock);

	return newtbl;
}