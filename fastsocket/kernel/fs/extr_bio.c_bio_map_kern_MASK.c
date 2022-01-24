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
struct request_queue {int dummy; } ;
struct bio {unsigned int bi_size; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct bio* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 struct bio* FUNC2 (struct request_queue*,void*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 

struct bio *FUNC4(struct request_queue *q, void *data, unsigned int len,
			 gfp_t gfp_mask)
{
	struct bio *bio;

	bio = FUNC2(q, data, len, gfp_mask);
	if (FUNC1(bio))
		return bio;

	if (bio->bi_size == len)
		return bio;

	/*
	 * Don't support partial mappings.
	 */
	FUNC3(bio);
	return FUNC0(-EINVAL);
}