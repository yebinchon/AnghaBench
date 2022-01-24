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
typedef  int u16 ;
struct ocfs2_dir_block_trailer {void* db_free_rec_len; void* db_blkno; void* db_parent_dinode; void* db_compat_rec_len; int /*<<< orphan*/  db_signature; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_DIR_TRAILER_SIGNATURE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 struct ocfs2_dir_block_trailer* FUNC3 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct inode *inode,
				   struct buffer_head *bh, u16 rec_len)
{
	struct ocfs2_dir_block_trailer *trailer;

	trailer = FUNC3(bh, inode->i_sb);
	FUNC4(trailer->db_signature, OCFS2_DIR_TRAILER_SIGNATURE);
	trailer->db_compat_rec_len =
			FUNC1(sizeof(struct ocfs2_dir_block_trailer));
	trailer->db_parent_dinode = FUNC2(FUNC0(inode)->ip_blkno);
	trailer->db_blkno = FUNC2(bh->b_blocknr);
	trailer->db_free_rec_len = FUNC1(rec_len);
}