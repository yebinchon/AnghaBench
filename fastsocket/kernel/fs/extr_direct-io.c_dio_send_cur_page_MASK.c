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
struct dio_submit {scalar_t__ cur_page_fs_offset; scalar_t__ logical_offset_in_bio; scalar_t__ final_block_in_bio; scalar_t__ cur_page_block; TYPE_1__* bio; scalar_t__ boundary; } ;
struct dio {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ bi_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct dio_submit*) ; 
 int /*<<< orphan*/  FUNC2 (struct dio*,struct dio_submit*) ; 
 int FUNC3 (struct dio*,struct dio_submit*,scalar_t__,struct buffer_head*) ; 

__attribute__((used)) static inline int FUNC4(struct dio *dio, struct dio_submit *sdio,
		struct buffer_head *map_bh)
{
	int ret = 0;

	if (sdio->bio) {
		loff_t cur_offset = sdio->cur_page_fs_offset;
		loff_t bio_next_offset = sdio->logical_offset_in_bio +
			sdio->bio->bi_size;

		/*
		 * See whether this new request is contiguous with the old.
		 *
		 * Btrfs cannot handl having logically non-contiguous requests
		 * submitted.  For exmple if you have
		 *
		 * Logical:  [0-4095][HOLE][8192-12287]
		 * Phyiscal: [0-4095]      [4096-8181]
		 *
		 * We cannot submit those pages together as one BIO.  So if our
		 * current logical offset in the file does not equal what would
		 * be the next logical offset in the bio, submit the bio we
		 * have.
		 */
		if (sdio->final_block_in_bio != sdio->cur_page_block ||
		    cur_offset != bio_next_offset)
			FUNC2(dio, sdio);
		/*
		 * Submit now if the underlying fs is about to perform a
		 * metadata read
		 */
		else if (sdio->boundary)
			FUNC2(dio, sdio);
	}

	if (sdio->bio == NULL) {
		ret = FUNC3(dio, sdio, sdio->cur_page_block, map_bh);
		if (ret)
			goto out;
	}

	if (FUNC1(sdio) != 0) {
		FUNC2(dio, sdio);
		ret = FUNC3(dio, sdio, sdio->cur_page_block, map_bh);
		if (ret == 0) {
			ret = FUNC1(sdio);
			FUNC0(ret != 0);
		}
	}
out:
	return ret;
}