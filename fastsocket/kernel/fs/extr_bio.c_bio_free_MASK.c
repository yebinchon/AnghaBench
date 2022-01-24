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
struct bio_set {int /*<<< orphan*/  bio_pool; scalar_t__ front_pad; } ;
struct bio {int /*<<< orphan*/  bi_io_vec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,struct bio_set*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio_set*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 

void FUNC6(struct bio *bio, struct bio_set *bs)
{
	void *p;

	if (FUNC1(bio))
		FUNC4(bs, bio->bi_io_vec, FUNC0(bio));

	if (FUNC2(bio))
		FUNC3(bio, bs);

	/*
	 * If we have front padding, adjust the bio pointer before freeing
	 */
	p = bio;
	if (bs->front_pad)
		p -= bs->front_pad;

	FUNC5(p, bs->bio_pool);
}