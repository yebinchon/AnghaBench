#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct buffer_head {int /*<<< orphan*/  b_page; int /*<<< orphan*/  b_end_io; scalar_t__ b_blocknr; int /*<<< orphan*/  b_bdev; } ;
typedef  scalar_t__ sector_t ;
typedef  scalar_t__ __u64 ;
struct TYPE_6__ {int /*<<< orphan*/  i_bmap; } ;
struct TYPE_5__ {TYPE_1__* mi_nilfs; } ;
struct TYPE_4__ {int /*<<< orphan*/  ns_bdev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EEXIST ; 
 int ENOMEM ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int READA ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_buffer_read_sync ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned long,scalar_t__*) ; 
 struct buffer_head* FUNC7 (struct inode*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (int,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct inode *inode, unsigned long blkoff,
		       int mode, struct buffer_head **out_bh)
{
	struct buffer_head *bh;
	__u64 blknum = 0;
	int ret = -ENOMEM;

	bh = FUNC7(inode, inode->i_mapping, blkoff, 0);
	if (FUNC12(!bh))
		goto failed;

	ret = -EEXIST; /* internal code */
	if (FUNC3(bh))
		goto out;

	if (mode == READA) {
		if (!FUNC11(bh)) {
			ret = -EBUSY;
			goto failed_bh;
		}
	} else /* mode == READ */
		FUNC5(bh);

	if (FUNC3(bh)) {
		FUNC13(bh);
		goto out;
	}

	ret = FUNC6(FUNC0(inode)->i_bmap, blkoff, &blknum);
	if (FUNC12(ret)) {
		FUNC13(bh);
		goto failed_bh;
	}
	bh->b_bdev = FUNC1(inode)->mi_nilfs->ns_bdev;
	bh->b_blocknr = (sector_t)blknum;
	FUNC9(bh);

	bh->b_end_io = end_buffer_read_sync;
	FUNC4(bh);
	FUNC10(mode, bh);
	ret = 0;
 out:
	FUNC4(bh);
	*out_bh = bh;

 failed_bh:
	FUNC14(bh->b_page);
	FUNC8(bh->b_page);
	FUNC2(bh);
 failed:
	return ret;
}