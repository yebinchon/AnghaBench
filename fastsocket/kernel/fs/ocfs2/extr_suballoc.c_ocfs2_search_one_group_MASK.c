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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  unsigned int u16 ;
struct ocfs2_group_desc {int /*<<< orphan*/  bg_free_bits_count; int /*<<< orphan*/  bg_chain; } ;
struct ocfs2_dinode {int dummy; } ;
struct ocfs2_alloc_context {int (* ac_group_search ) (struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ;TYPE_1__* ac_bh; int /*<<< orphan*/  ac_max_block; struct inode* ac_inode; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ *,TYPE_1__*,unsigned int,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct inode*,struct ocfs2_group_desc*,struct buffer_head*,unsigned int,unsigned int) ; 
 int FUNC5 (struct inode*,struct ocfs2_dinode*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int FUNC6 (struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 

__attribute__((used)) static int FUNC7(struct ocfs2_alloc_context *ac,
				  handle_t *handle,
				  u32 bits_wanted,
				  u32 min_bits,
				  u16 *bit_off,
				  unsigned int *num_bits,
				  u64 gd_blkno,
				  u16 *bits_left)
{
	int ret;
	u16 found;
	struct buffer_head *group_bh = NULL;
	struct ocfs2_group_desc *gd;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)ac->ac_bh->b_data;
	struct inode *alloc_inode = ac->ac_inode;

	ret = FUNC5(alloc_inode, di, gd_blkno,
					  &group_bh);
	if (ret < 0) {
		FUNC2(ret);
		return ret;
	}

	gd = (struct ocfs2_group_desc *) group_bh->b_data;
	ret = ac->ac_group_search(alloc_inode, group_bh, bits_wanted, min_bits,
				  ac->ac_max_block, bit_off, &found);
	if (ret < 0) {
		if (ret != -ENOSPC)
			FUNC2(ret);
		goto out;
	}

	*num_bits = found;

	ret = FUNC3(alloc_inode, handle, ac->ac_bh,
					       *num_bits,
					       FUNC1(gd->bg_chain));
	if (ret < 0) {
		FUNC2(ret);
		goto out;
	}

	ret = FUNC4(handle, alloc_inode, gd, group_bh,
					 *bit_off, *num_bits);
	if (ret < 0)
		FUNC2(ret);

	*bits_left = FUNC1(gd->bg_free_bits_count);

out:
	FUNC0(group_bh);

	return ret;
}