#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int i_blkbits; scalar_t__ i_ino; } ;
struct buffer_head {int /*<<< orphan*/  b_page; void* b_blocknr; int /*<<< orphan*/  b_end_io; int /*<<< orphan*/  b_bdev; int /*<<< orphan*/  b_data; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ sector_t ;
typedef  void* __u64 ;
struct TYPE_3__ {int /*<<< orphan*/  ns_bdev; } ;

/* Variables and functions */
 int BH_NILFS_Node ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int EEXIST ; 
 int ENOMEM ; 
 struct inode* FUNC1 (struct address_space*) ; 
 scalar_t__ NILFS_DAT_INO ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_buffer_read_sync ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC10 (TYPE_1__*) ; 
 int FUNC11 (struct inode*,void*,scalar_t__*) ; 
 struct buffer_head* FUNC12 (struct inode*,struct address_space*,void*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

int FUNC20(struct address_space *btnc, __u64 blocknr,
			      sector_t pblocknr, struct buffer_head **pbh,
			      int newblk)
{
	struct buffer_head *bh;
	struct inode *inode = FUNC1(btnc);
	int err;

	bh = FUNC12(inode, btnc, blocknr, 1 << BH_NILFS_Node);
	if (FUNC17(!bh))
		return -ENOMEM;

	err = -EEXIST; /* internal code */
	if (newblk) {
		if (FUNC17(FUNC5(bh) || FUNC6(bh) ||
			     FUNC4(bh))) {
			FUNC3(bh);
			FUNC0();
		}
		FUNC9(bh->b_data, 0, 1 << inode->i_blkbits);
		bh->b_bdev = FUNC2(inode)->ns_bdev;
		bh->b_blocknr = blocknr;
		FUNC14(bh);
		FUNC15(bh);
		goto found;
	}

	if (FUNC6(bh) || FUNC4(bh))
		goto found;

	if (pblocknr == 0) {
		pblocknr = blocknr;
		if (inode->i_ino != NILFS_DAT_INO) {
			struct inode *dat =
				FUNC10(FUNC2(inode));

			/* blocknr is a virtual block number */
			err = FUNC11(dat, blocknr, &pblocknr);
			if (FUNC17(err)) {
				FUNC3(bh);
				goto out_locked;
			}
		}
	}
	FUNC8(bh);
	if (FUNC6(bh)) {
		FUNC18(bh);
		err = -EEXIST; /* internal code */
		goto found;
	}
	FUNC14(bh);
	bh->b_bdev = FUNC2(inode)->ns_bdev;
	bh->b_blocknr = pblocknr; /* set block address for read */
	bh->b_end_io = end_buffer_read_sync;
	FUNC7(bh);
	FUNC16(READ, bh);
	bh->b_blocknr = blocknr; /* set back to the given block address */
	err = 0;
found:
	*pbh = bh;

out_locked:
	FUNC19(bh->b_page);
	FUNC13(bh->b_page);
	return err;
}