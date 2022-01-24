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
struct biovec_slab {int /*<<< orphan*/  slab; } ;
struct bio_vec {int dummy; } ;
struct bio_set {int /*<<< orphan*/  bvec_pool; } ;

/* Variables and functions */
 unsigned int BIOVEC_MAX_IDX ; 
 unsigned int BIOVEC_NR_POOLS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct biovec_slab* bvec_slabs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bio_vec*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_vec*,int /*<<< orphan*/ ) ; 

void FUNC3(struct bio_set *bs, struct bio_vec *bv, unsigned int idx)
{
	FUNC0(idx >= BIOVEC_NR_POOLS);

	if (idx == BIOVEC_MAX_IDX)
		FUNC2(bv, bs->bvec_pool);
	else {
		struct biovec_slab *bvs = bvec_slabs + idx;

		FUNC1(bvs->slab, bv);
	}
}