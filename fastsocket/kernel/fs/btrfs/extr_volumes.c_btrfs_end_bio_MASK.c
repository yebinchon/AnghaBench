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
struct btrfs_device {scalar_t__ bdev; } ;
struct btrfs_bio {unsigned int num_stripes; scalar_t__ max_errors; int /*<<< orphan*/  error; scalar_t__ mirror_num; int /*<<< orphan*/  end_io; int /*<<< orphan*/  private; struct bio* orig_bio; int /*<<< orphan*/  stripes_pending; TYPE_1__* stripes; } ;
struct block_device {int dummy; } ;
struct bio {int bi_rw; int /*<<< orphan*/  bi_flags; struct block_device* bi_bdev; int /*<<< orphan*/  bi_end_io; int /*<<< orphan*/  bi_private; } ;
struct TYPE_2__ {struct btrfs_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  BTRFS_DEV_STAT_FLUSH_ERRS ; 
 int /*<<< orphan*/  BTRFS_DEV_STAT_READ_ERRS ; 
 int /*<<< orphan*/  BTRFS_DEV_STAT_WRITE_ERRS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int EREMOTEIO ; 
 int WRITE ; 
 int WRITE_FLUSH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_device*) ; 
 struct btrfs_bio* FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_bio*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct bio *bio, int err)
{
	struct btrfs_bio *bbio = FUNC8(bio->bi_private);
	int is_orig_bio = 0;

	if (err) {
		FUNC2(&bbio->error);
		if (err == -EIO || err == -EREMOTEIO) {
			unsigned int stripe_index =
				FUNC9(
					bio->bi_private);
			struct btrfs_device *dev;

			FUNC0(stripe_index >= bbio->num_stripes);
			dev = bbio->stripes[stripe_index].dev;
			if (dev->bdev) {
				if (bio->bi_rw & WRITE)
					FUNC6(dev,
						BTRFS_DEV_STAT_WRITE_ERRS);
				else
					FUNC6(dev,
						BTRFS_DEV_STAT_READ_ERRS);
				if ((bio->bi_rw & WRITE_FLUSH) == WRITE_FLUSH)
					FUNC6(dev,
						BTRFS_DEV_STAT_FLUSH_ERRS);
				FUNC7(dev);
			}
		}
	}

	if (bio == bbio->orig_bio)
		is_orig_bio = 1;

	if (FUNC1(&bbio->stripes_pending)) {
		if (!is_orig_bio) {
			FUNC5(bio);
			bio = bbio->orig_bio;
		}
		bio->bi_private = bbio->private;
		bio->bi_end_io = bbio->end_io;
		bio->bi_bdev = (struct block_device *)
					(unsigned long)bbio->mirror_num;
		/* only send an error to the higher layers if it is
		 * beyond the tolerance of the multi-bio
		 */
		if (FUNC3(&bbio->error) > bbio->max_errors) {
			err = -EIO;
		} else {
			/*
			 * this bio is actually up to date, we didn't
			 * go over the max number of errors
			 */
			FUNC11(BIO_UPTODATE, &bio->bi_flags);
			err = 0;
		}
		FUNC10(bbio);

		FUNC4(bio, err);
	} else if (!is_orig_bio) {
		FUNC5(bio);
	}
}