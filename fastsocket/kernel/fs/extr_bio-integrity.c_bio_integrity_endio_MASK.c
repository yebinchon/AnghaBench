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
struct bio_integrity_payload {int /*<<< orphan*/  bip_work; int /*<<< orphan*/  bip_end_io; struct bio* bip_bio; } ;
struct bio {int /*<<< orphan*/  bi_end_io; struct bio_integrity_payload* bi_integrity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int) ; 
 int /*<<< orphan*/  bio_integrity_verify_fn ; 
 int /*<<< orphan*/  kintegrityd_wq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct bio *bio, int error)
{
	struct bio_integrity_payload *bip = bio->bi_integrity;

	FUNC0(bip->bip_bio != bio);

	/* In case of an I/O error there is no point in verifying the
	 * integrity metadata.  Restore original bio end_io handler
	 * and run it.
	 */
	if (error) {
		bio->bi_end_io = bip->bip_end_io;
		FUNC2(bio, error);

		return;
	}

	FUNC1(&bip->bip_work, bio_integrity_verify_fn);
	FUNC3(kintegrityd_wq, &bip->bip_work);
}