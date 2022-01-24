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
struct request_queue {int bounce_gfp; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  mempool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GFP_DMA ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,struct bio**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 scalar_t__ blk_max_pfn ; 
 int /*<<< orphan*/ * isa_page_pool ; 
 int FUNC3 (struct request_queue*,struct bio*) ; 
 int /*<<< orphan*/ * page_pool ; 
 scalar_t__ FUNC4 (struct request_queue*) ; 

void FUNC5(struct request_queue *q, struct bio **bio_orig)
{
	int must_bounce;
	mempool_t *pool;

	/*
	 * Data-less bio, nothing to bounce
	 */
	if (!FUNC2(*bio_orig))
		return;

	must_bounce = FUNC3(q, *bio_orig);

	/*
	 * for non-isa bounce case, just check if the bounce pfn is equal
	 * to or bigger than the highest pfn in the system -- in that case,
	 * don't waste time iterating over bio segments
	 */
	if (!(q->bounce_gfp & GFP_DMA)) {
		if (FUNC4(q) >= blk_max_pfn && !must_bounce)
			return;
		pool = page_pool;
	} else {
		FUNC0(!isa_page_pool);
		pool = isa_page_pool;
	}

	/*
	 * slow path
	 */
	FUNC1(q, bio_orig, pool, must_bounce);
}