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
struct bio_vec {int dummy; } ;
struct bio_set {int front_pad; int /*<<< orphan*/  bio_pool; } ;
struct bio {unsigned long bi_flags; int bi_max_vecs; struct bio_vec* bi_io_vec; struct bio_vec* bi_inline_vecs; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int BIO_INLINE_VECS ; 
 unsigned long BIO_POOL_NONE ; 
 unsigned long BIO_POOL_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 struct bio_vec* FUNC1 (int /*<<< orphan*/ ,int,unsigned long*,struct bio_set*) ; 
 int FUNC2 (unsigned long) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

struct bio *FUNC6(gfp_t gfp_mask, int nr_iovecs, struct bio_set *bs)
{
	unsigned long idx = BIO_POOL_NONE;
	struct bio_vec *bvl = NULL;
	struct bio *bio;
	void *p;

	p = FUNC3(bs->bio_pool, gfp_mask);
	if (FUNC5(!p))
		return NULL;
	bio = p + bs->front_pad;

	FUNC0(bio);

	if (FUNC5(!nr_iovecs))
		goto out_set;

	if (nr_iovecs <= BIO_INLINE_VECS) {
		bvl = bio->bi_inline_vecs;
		nr_iovecs = BIO_INLINE_VECS;
	} else {
		bvl = FUNC1(gfp_mask, nr_iovecs, &idx, bs);
		if (FUNC5(!bvl))
			goto err_free;

		nr_iovecs = FUNC2(idx);
	}
out_set:
	bio->bi_flags |= idx << BIO_POOL_OFFSET;
	bio->bi_max_vecs = nr_iovecs;
	bio->bi_io_vec = bvl;
	return bio;

err_free:
	FUNC4(p, bs->bio_pool);
	return NULL;
}