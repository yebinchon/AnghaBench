#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct blk_integrity {int tuple_size; } ;
struct TYPE_10__ {int bip_vcnt; scalar_t__ bip_idx; scalar_t__ bip_sector; TYPE_3__* bip_vec; } ;
struct TYPE_9__ {int bip_vcnt; scalar_t__ bip_idx; scalar_t__ bip_sector; TYPE_3__* bip_vec; } ;
struct TYPE_8__ {int bv_len; int bv_offset; } ;
struct TYPE_7__ {TYPE_5__* bi_integrity; } ;
struct TYPE_6__ {TYPE_4__* bi_integrity; } ;
struct bio_pair {TYPE_5__ bip2; TYPE_4__ bip1; TYPE_3__ iv2; TYPE_3__ iv1; TYPE_2__ bio2; TYPE_1__ bio1; } ;
struct bio_integrity_payload {int bip_vcnt; scalar_t__ bip_sector; TYPE_3__* bip_vec; } ;
struct bio {struct bio_integrity_payload* bi_integrity; int /*<<< orphan*/  bi_bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct blk_integrity* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 unsigned int FUNC3 (struct blk_integrity*,int) ; 

void FUNC4(struct bio *bio, struct bio_pair *bp, int sectors)
{
	struct blk_integrity *bi;
	struct bio_integrity_payload *bip = bio->bi_integrity;
	unsigned int nr_sectors;

	if (FUNC2(bio) == 0)
		return;

	bi = FUNC1(bio->bi_bdev);
	FUNC0(bi == NULL);
	FUNC0(bip->bip_vcnt != 1);

	nr_sectors = FUNC3(bi, sectors);

	bp->bio1.bi_integrity = &bp->bip1;
	bp->bio2.bi_integrity = &bp->bip2;

	bp->iv1 = bip->bip_vec[0];
	bp->iv2 = bip->bip_vec[0];

	bp->bip1.bip_vec[0] = bp->iv1;
	bp->bip2.bip_vec[0] = bp->iv2;

	bp->iv1.bv_len = sectors * bi->tuple_size;
	bp->iv2.bv_offset += sectors * bi->tuple_size;
	bp->iv2.bv_len -= sectors * bi->tuple_size;

	bp->bip1.bip_sector = bio->bi_integrity->bip_sector;
	bp->bip2.bip_sector = bio->bi_integrity->bip_sector + nr_sectors;

	bp->bip1.bip_vcnt = bp->bip2.bip_vcnt = 1;
	bp->bip1.bip_idx = bp->bip2.bip_idx = 0;
}