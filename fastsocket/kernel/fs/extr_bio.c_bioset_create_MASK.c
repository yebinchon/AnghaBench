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
struct bio_set {unsigned int front_pad; int /*<<< orphan*/  bio_pool; int /*<<< orphan*/  bio_slab; } ;

/* Variables and functions */
 int BIO_INLINE_VECS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_set*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_set*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct bio_set*) ; 
 struct bio_set* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 

struct bio_set *FUNC6(unsigned int pool_size, unsigned int front_pad)
{
	unsigned int back_pad = BIO_INLINE_VECS * sizeof(struct bio_vec);
	struct bio_set *bs;

	bs = FUNC4(sizeof(*bs), GFP_KERNEL);
	if (!bs)
		return NULL;

	bs->front_pad = front_pad;

	bs->bio_slab = FUNC0(front_pad + back_pad);
	if (!bs->bio_slab) {
		FUNC3(bs);
		return NULL;
	}

	bs->bio_pool = FUNC5(pool_size, bs->bio_slab);
	if (!bs->bio_pool)
		goto bad;

	if (!FUNC2(bs, pool_size))
		return bs;

bad:
	FUNC1(bs);
	return NULL;
}