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
struct TYPE_2__ {scalar_t__ nblocks; } ;
struct nilfs_segment_buffer {scalar_t__ sb_rest_blocks; TYPE_1__ sb_sum; } ;
struct nilfs_sc_info {scalar_t__ sc_blk_cnt; int /*<<< orphan*/  sc_binfo_ptr; struct nilfs_segment_buffer* sc_curseg; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nilfs_segment_buffer*,struct buffer_head*) ; 
 int FUNC1 (struct nilfs_segment_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct nilfs_sc_info*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct nilfs_sc_info*,struct inode*) ; 
 int FUNC4 (struct nilfs_sc_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct nilfs_sc_info*,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC6 (struct nilfs_sc_info*,int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct nilfs_sc_info *sci,
					struct buffer_head *bh,
					struct inode *inode,
					unsigned binfo_size)
{
	struct nilfs_segment_buffer *segbuf;
	int required, err = 0;

 retry:
	segbuf = sci->sc_curseg;
	required = FUNC6(
		sci, &sci->sc_binfo_ptr, binfo_size);
	if (segbuf->sb_sum.nblocks + required + 1 > segbuf->sb_rest_blocks) {
		FUNC3(sci, inode);
		err = FUNC4(sci);
		if (err)
			return err;
		goto retry;
	}
	if (FUNC7(required)) {
		err = FUNC1(segbuf);
		if (FUNC7(err))
			goto failed;
	}
	if (sci->sc_blk_cnt == 0)
		FUNC2(sci, inode);

	FUNC5(sci, &sci->sc_binfo_ptr, binfo_size);
	/* Substitution to vblocknr is delayed until update_blocknr() */
	FUNC0(segbuf, bh);
	sci->sc_blk_cnt++;
 failed:
	return err;
}