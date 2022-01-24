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
struct neighbour {struct neighbour* next; int /*<<< orphan*/  dev; int /*<<< orphan*/  primary_key; } ;
struct neigh_table {int hash_mask; unsigned int (* hash ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;struct neighbour** hash_buckets; int /*<<< orphan*/  hash_rnd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct neigh_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  hash_grows ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 struct neighbour** FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct neighbour**,unsigned int) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct neigh_table *tbl, unsigned long new_entries)
{
	struct neighbour **new_hash, **old_hash;
	unsigned int i, new_hash_mask, old_entries;

	FUNC1(tbl, hash_grows);

	FUNC0(!FUNC3(new_entries));
	new_hash = FUNC4(new_entries);
	if (!new_hash)
		return;

	old_entries = tbl->hash_mask + 1;
	new_hash_mask = new_entries - 1;
	old_hash = tbl->hash_buckets;

	FUNC2(&tbl->hash_rnd, sizeof(tbl->hash_rnd));
	for (i = 0; i < old_entries; i++) {
		struct neighbour *n, *next;

		for (n = old_hash[i]; n; n = next) {
			unsigned int hash_val = tbl->hash(n->primary_key, n->dev);

			hash_val &= new_hash_mask;
			next = n->next;

			n->next = new_hash[hash_val];
			new_hash[hash_val] = n;
		}
	}
	tbl->hash_buckets = new_hash;
	tbl->hash_mask = new_hash_mask;

	FUNC5(old_hash, old_entries);
}