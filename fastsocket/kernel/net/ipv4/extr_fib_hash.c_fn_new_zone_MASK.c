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
struct fn_zone {int fz_divisor; int fz_hashmask; int fz_order; struct fn_zone* fz_next; int /*<<< orphan*/  fz_mask; int /*<<< orphan*/  fz_hash; } ;
struct fn_hash {struct fn_zone** fn_zones; struct fn_zone* fn_zone_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  fib_hash_genid ; 
 int /*<<< orphan*/  fib_hash_lock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct fn_zone*) ; 
 struct fn_zone* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct fn_zone *
FUNC6(struct fn_hash *table, int z)
{
	int i;
	struct fn_zone *fz = FUNC3(sizeof(struct fn_zone), GFP_KERNEL);
	if (!fz)
		return NULL;

	if (z) {
		fz->fz_divisor = 16;
	} else {
		fz->fz_divisor = 1;
	}
	fz->fz_hashmask = (fz->fz_divisor - 1);
	fz->fz_hash = FUNC0(fz->fz_divisor);
	if (!fz->fz_hash) {
		FUNC2(fz);
		return NULL;
	}
	fz->fz_order = z;
	fz->fz_mask = FUNC1(z);

	/* Find the first not empty zone with more specific mask */
	for (i=z+1; i<=32; i++)
		if (table->fn_zones[i])
			break;
	FUNC4(&fib_hash_lock);
	if (i>32) {
		/* No more specific masks, we are the first. */
		fz->fz_next = table->fn_zone_list;
		table->fn_zone_list = fz;
	} else {
		fz->fz_next = table->fn_zones[i]->fz_next;
		table->fn_zones[i]->fz_next = fz;
	}
	table->fn_zones[z] = fz;
	fib_hash_genid++;
	FUNC5(&fib_hash_lock);
	return fz;
}