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
struct TYPE_5__ {int nsumblk; scalar_t__ sumbytes; } ;
struct nilfs_segment_buffer {TYPE_2__ sb_sum; } ;
struct TYPE_6__ {scalar_t__ offset; } ;
struct nilfs_sc_info {scalar_t__ sc_blk_cnt; scalar_t__ sc_datablk_cnt; TYPE_3__ sc_binfo_ptr; TYPE_3__ sc_finfo_ptr; TYPE_1__* sc_super; struct nilfs_segment_buffer* sc_curseg; } ;
struct nilfs_inode_info {int /*<<< orphan*/  i_cno; } ;
struct nilfs_finfo {void* fi_cno; void* fi_ndatablk; void* fi_nblocks; void* fi_ino; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct TYPE_4__ {int s_blocksize; } ;

/* Variables and functions */
 struct nilfs_inode_info* FUNC0 (struct inode*) ; 
 void* FUNC1 (scalar_t__) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 struct nilfs_finfo* FUNC3 (struct nilfs_sc_info*,TYPE_3__*,int) ; 

__attribute__((used)) static void FUNC4(struct nilfs_sc_info *sci,
				    struct inode *inode)
{
	struct nilfs_finfo *finfo;
	struct nilfs_inode_info *ii;
	struct nilfs_segment_buffer *segbuf;

	if (sci->sc_blk_cnt == 0)
		return;

	ii = FUNC0(inode);
	finfo = FUNC3(sci, &sci->sc_finfo_ptr,
						 sizeof(*finfo));
	finfo->fi_ino = FUNC2(inode->i_ino);
	finfo->fi_nblocks = FUNC1(sci->sc_blk_cnt);
	finfo->fi_ndatablk = FUNC1(sci->sc_datablk_cnt);
	finfo->fi_cno = FUNC2(ii->i_cno);

	segbuf = sci->sc_curseg;
	segbuf->sb_sum.sumbytes = sci->sc_binfo_ptr.offset +
		sci->sc_super->s_blocksize * (segbuf->sb_sum.nsumblk - 1);
	sci->sc_finfo_ptr = sci->sc_binfo_ptr;
	sci->sc_blk_cnt = sci->sc_datablk_cnt = 0;
}