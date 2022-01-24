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
struct bio_integrity_payload {size_t bip_slab; int /*<<< orphan*/ * bip_buf; } ;
struct bio {struct bio_integrity_payload* bi_integrity; } ;
struct TYPE_2__ {int /*<<< orphan*/  slab; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_CLONED ; 
 int /*<<< orphan*/  BIO_FS_INTEGRITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 TYPE_1__* bip_slab ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bio_integrity_payload*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio_integrity_payload*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (size_t) ; 

void FUNC6(struct bio *bio, struct bio_set *bs)
{
	struct bio_integrity_payload *bip = bio->bi_integrity;

	FUNC0(bip == NULL);

	/* A cloned bio doesn't own the integrity metadata */
	if (!FUNC1(bio, BIO_CLONED) && !FUNC1(bio, BIO_FS_INTEGRITY)
	    && bip->bip_buf != NULL)
		FUNC2(bip->bip_buf);

	if (FUNC5(bip->bip_slab))
		FUNC4(bip, bs->bio_integrity_pool);
	else
		FUNC3(bip_slab[bip->bip_slab].slab, bip);

	bio->bi_integrity = NULL;
}