#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bio_set {int /*<<< orphan*/  bio_integrity_pool; } ;
struct TYPE_2__ {int /*<<< orphan*/  slab; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_MAX_PAGES ; 
 TYPE_1__* bip_slab ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct bio_set *bs, int pool_size)
{
	unsigned int max_slab = FUNC1(BIO_MAX_PAGES);

	if (bs->bio_integrity_pool)
		return 0;

	bs->bio_integrity_pool =
		FUNC0(pool_size, bip_slab[max_slab].slab);

	if (!bs->bio_integrity_pool)
		return -1;

	return 0;
}