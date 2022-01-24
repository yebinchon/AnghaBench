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
struct bio_integrity_payload {int dummy; } ;
struct bio {int /*<<< orphan*/  bi_bdev; struct bio_integrity_payload* bi_integrity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct blk_integrity* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct blk_integrity*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct bio_integrity_payload*,unsigned int) ; 

void FUNC4(struct bio *bio, unsigned int bytes_done)
{
	struct bio_integrity_payload *bip = bio->bi_integrity;
	struct blk_integrity *bi = FUNC1(bio->bi_bdev);
	unsigned int nr_sectors;

	FUNC0(bip == NULL);
	FUNC0(bi == NULL);

	nr_sectors = FUNC2(bi, bytes_done >> 9);
	FUNC3(bip, nr_sectors * bi->tuple_size);
}