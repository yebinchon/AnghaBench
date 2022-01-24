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
struct bio {int bi_flags; int bi_max_vecs; int /*<<< orphan*/  bi_destructor; int /*<<< orphan*/  bi_inline_vecs; int /*<<< orphan*/  bi_io_vec; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int BIO_POOL_NONE ; 
 int BIO_POOL_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  bio_kmalloc_destructor ; 
 struct bio* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

struct bio *FUNC3(gfp_t gfp_mask, int nr_iovecs)
{
	struct bio *bio;

	bio = FUNC1(sizeof(struct bio) + nr_iovecs * sizeof(struct bio_vec),
		      gfp_mask);
	if (FUNC2(!bio))
		return NULL;

	FUNC0(bio);
	bio->bi_flags |= BIO_POOL_NONE << BIO_POOL_OFFSET;
	bio->bi_max_vecs = nr_iovecs;
	bio->bi_io_vec = bio->bi_inline_vecs;
	bio->bi_destructor = bio_kmalloc_destructor;

	return bio;
}