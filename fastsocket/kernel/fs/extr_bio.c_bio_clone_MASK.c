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
struct bio {int /*<<< orphan*/  bi_destructor; int /*<<< orphan*/  bi_max_vecs; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*,struct bio*) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_fs_destructor ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 int FUNC3 (struct bio*,struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  fs_bio_set ; 

struct bio *FUNC5(struct bio *bio, gfp_t gfp_mask)
{
	struct bio *b = FUNC1(gfp_mask, bio->bi_max_vecs, fs_bio_set);

	if (!b)
		return NULL;

	b->bi_destructor = bio_fs_destructor;
	FUNC0(b, bio);

	if (FUNC2(bio)) {
		int ret;

		ret = FUNC3(b, bio, gfp_mask, fs_bio_set);

		if (ret < 0) {
			FUNC4(b);
			return NULL;
		}
	}

	return b;
}