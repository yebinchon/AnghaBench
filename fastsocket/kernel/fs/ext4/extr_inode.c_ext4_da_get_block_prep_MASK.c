#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int i_blkbits; TYPE_1__* i_sb; } ;
struct buffer_head {int b_size; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_5__ {int /*<<< orphan*/  s_es; } ;
struct TYPE_4__ {int s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,int,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC11(struct inode *inode, sector_t iblock,
				  struct buffer_head *bh_result, int create)
{
	int ret = 0;
	sector_t invalid_block = ~((sector_t) 0xffff);

	if (invalid_block < FUNC4(FUNC1(inode->i_sb)->s_es))
		invalid_block = ~0;

	FUNC0(create == 0);
	FUNC0(bh_result->b_size != inode->i_sb->s_blocksize);

	/*
	 * first, we need to know whether the block is allocated already
	 * preallocated blocks are unmapped but should treated
	 * the same as allocated blocks.
	 */
	ret = FUNC6(NULL, inode, iblock, 1,  bh_result, 0);
	if ((ret == 0) && !FUNC2(bh_result)) {
		/* the block isn't (pre)allocated yet, let's reserve space */
		/*
		 * XXX: __block_prepare_write() unmaps passed block,
		 * is it OK?
		 */
		ret = FUNC5(inode, iblock);
		if (ret)
			/* not enough space to reserve */
			return ret;

		FUNC7(bh_result, inode->i_sb, invalid_block);
		FUNC10(bh_result);
		FUNC8(bh_result);
	} else if (ret > 0) {
		bh_result->b_size = (ret << inode->i_blkbits);
		if (FUNC3(bh_result)) {
			/* A delayed write to unwritten bh should
			 * be marked new and mapped.  Mapped ensures
			 * that we don't do get_block multiple times
			 * when we write to the same offset and new
			 * ensures that we do proper zero out for
			 * partial write.
			 */
			FUNC10(bh_result);
			FUNC9(bh_result);
		}
		ret = 0;
	}

	return ret;
}