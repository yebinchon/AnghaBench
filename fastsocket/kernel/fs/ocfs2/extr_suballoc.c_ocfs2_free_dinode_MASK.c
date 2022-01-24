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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct ocfs2_dinode {int /*<<< orphan*/  i_suballoc_bit; int /*<<< orphan*/  i_blkno; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(handle_t *handle,
		      struct inode *inode_alloc_inode,
		      struct buffer_head *inode_alloc_bh,
		      struct ocfs2_dinode *di)
{
	u64 blk = FUNC1(di->i_blkno);
	u16 bit = FUNC0(di->i_suballoc_bit);
	u64 bg_blkno = FUNC3(blk, bit);

	return FUNC2(handle, inode_alloc_inode,
					inode_alloc_bh, bit, bg_blkno, 1);
}