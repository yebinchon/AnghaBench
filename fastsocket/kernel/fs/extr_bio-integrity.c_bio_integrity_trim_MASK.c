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
struct blk_integrity {unsigned int tuple_size; } ;
struct bio_integrity_payload {scalar_t__ bip_sector; } ;
struct bio {int /*<<< orphan*/  bi_bdev; struct bio_integrity_payload* bi_integrity; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_CLONED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct blk_integrity* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct blk_integrity*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct bio_integrity_payload*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct bio_integrity_payload*,unsigned int) ; 

void FUNC6(struct bio *bio, unsigned int offset,
			unsigned int sectors)
{
	struct bio_integrity_payload *bip = bio->bi_integrity;
	struct blk_integrity *bi = FUNC1(bio->bi_bdev);
	unsigned int nr_sectors;

	FUNC0(bip == NULL);
	FUNC0(bi == NULL);
	FUNC0(!FUNC2(bio, BIO_CLONED));

	nr_sectors = FUNC3(bi, sectors);
	bip->bip_sector = bip->bip_sector + offset;
	FUNC4(bip, offset * bi->tuple_size);
	FUNC5(bip, sectors * bi->tuple_size);
}