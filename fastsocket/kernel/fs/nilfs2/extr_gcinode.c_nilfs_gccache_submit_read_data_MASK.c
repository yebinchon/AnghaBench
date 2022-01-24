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
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct buffer_head {int /*<<< orphan*/  b_page; scalar_t__ b_blocknr; int /*<<< orphan*/  b_end_io; int /*<<< orphan*/  b_bdev; } ;
typedef  scalar_t__ sector_t ;
typedef  scalar_t__ __u64 ;
struct TYPE_2__ {int /*<<< orphan*/  ns_bdev; struct inode* ns_dat; } ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_buffer_read_sync ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int FUNC6 (struct inode*,scalar_t__,scalar_t__*) ; 
 struct buffer_head* FUNC7 (struct inode*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(struct inode *inode, sector_t blkoff,
				   sector_t pbn, __u64 vbn,
				   struct buffer_head **out_bh)
{
	struct buffer_head *bh;
	int err;

	bh = FUNC7(inode, inode->i_mapping, blkoff, 0);
	if (FUNC11(!bh))
		return -ENOMEM;

	if (FUNC3(bh))
		goto out;

	if (pbn == 0) {
		struct inode *dat_inode = FUNC0(inode)->ns_dat;
					  /* use original dat, not gc dat. */
		err = FUNC6(dat_inode, vbn, &pbn);
		if (FUNC11(err)) { /* -EIO, -ENOMEM, -ENOENT */
			FUNC1(bh);
			goto failed;
		}
	}

	FUNC5(bh);
	if (FUNC3(bh)) {
		FUNC12(bh);
		goto out;
	}

	if (!FUNC2(bh)) {
		bh->b_bdev = FUNC0(inode)->ns_bdev;
		FUNC9(bh);
	}
	bh->b_blocknr = pbn;
	bh->b_end_io = end_buffer_read_sync;
	FUNC4(bh);
	FUNC10(READ, bh);
	if (vbn)
		bh->b_blocknr = vbn;
 out:
	err = 0;
	*out_bh = bh;

 failed:
	FUNC13(bh->b_page);
	FUNC8(bh->b_page);
	return err;
}