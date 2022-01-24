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
struct bio {int /*<<< orphan*/  bi_flags; struct bio* bi_private; } ;
typedef  int /*<<< orphan*/  mempool_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,struct bio*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct bio *bio, mempool_t *pool, int err)
{
	struct bio *bio_orig = bio->bi_private;

	if (FUNC2(BIO_UPTODATE, &bio->bi_flags))
		FUNC1(bio_orig, bio);

	FUNC0(bio, pool, err);
}