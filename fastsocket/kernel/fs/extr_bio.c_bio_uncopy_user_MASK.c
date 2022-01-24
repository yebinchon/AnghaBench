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
struct bio_map_data {int /*<<< orphan*/  is_our_pages; int /*<<< orphan*/  nr_sgvecs; int /*<<< orphan*/  sgvecs; int /*<<< orphan*/  iovecs; } ;
struct bio {struct bio_map_data* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_NULL_MAPPED ; 
 scalar_t__ READ ; 
 int FUNC0 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio_map_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 

int FUNC5(struct bio *bio)
{
	struct bio_map_data *bmd = bio->bi_private;
	int ret = 0;

	if (!FUNC2(bio, BIO_NULL_MAPPED))
		ret = FUNC0(bio, bmd->iovecs, bmd->sgvecs,
				     bmd->nr_sgvecs, FUNC1(bio) == READ,
				     0, bmd->is_our_pages);
	FUNC3(bmd);
	FUNC4(bio);
	return ret;
}