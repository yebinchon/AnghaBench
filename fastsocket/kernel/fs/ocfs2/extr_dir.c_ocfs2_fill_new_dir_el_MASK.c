#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_super {TYPE_1__* sb; } ;
struct ocfs2_dir_entry {int /*<<< orphan*/  rec_len; } ;
struct ocfs2_dir_block_trailer {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int i_nlink; int /*<<< orphan*/  i_blocks; TYPE_2__* i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {int /*<<< orphan*/  s_blocksize; } ;
struct TYPE_3__ {unsigned int s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 unsigned int FUNC9 (TYPE_2__*) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,struct inode*,struct buffer_head*,struct ocfs2_alloc_context*,int /*<<< orphan*/ *,struct buffer_head**) ; 
 struct ocfs2_dir_entry* FUNC11 (struct inode*,struct inode*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC16 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 scalar_t__ FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct buffer_head*) ; 

__attribute__((used)) static int FUNC19(struct ocfs2_super *osb,
				 handle_t *handle,
				 struct inode *parent,
				 struct inode *inode,
				 struct buffer_head *fe_bh,
				 struct ocfs2_alloc_context *data_ac,
				 struct buffer_head **ret_new_bh)
{
	int status;
	unsigned int size = osb->sb->s_blocksize;
	struct buffer_head *new_bh = NULL;
	struct ocfs2_dir_entry *de;

	FUNC6();

	if (FUNC17(inode))
		size = FUNC9(parent->i_sb);

	status = FUNC10(osb->sb, handle, inode, fe_bh,
				     data_ac, NULL, &new_bh);
	if (status < 0) {
		FUNC7(status);
		goto bail;
	}

	FUNC18(FUNC0(inode), new_bh);

	status = FUNC14(handle, FUNC0(inode), new_bh,
					 OCFS2_JOURNAL_ACCESS_CREATE);
	if (status < 0) {
		FUNC7(status);
		goto bail;
	}
	FUNC5(new_bh->b_data, 0, osb->sb->s_blocksize);

	de = FUNC11(inode, parent, new_bh->b_data, size);
	if (FUNC17(inode)) {
		int size = FUNC4(de->rec_len);

		/*
		 * Figure out the size of the hole left over after
		 * insertion of '.' and '..'. The trailer wants this
		 * information.
		 */
		size -= FUNC1(2);
		size -= sizeof(struct ocfs2_dir_block_trailer);

		FUNC12(inode, new_bh, size);
	}

	status = FUNC15(handle, new_bh);
	if (status < 0) {
		FUNC7(status);
		goto bail;
	}

	FUNC3(inode, inode->i_sb->s_blocksize);
	inode->i_nlink = 2;
	inode->i_blocks = FUNC13(inode);
	status = FUNC16(handle, inode, fe_bh);
	if (status < 0) {
		FUNC7(status);
		goto bail;
	}

	status = 0;
	if (ret_new_bh) {
		*ret_new_bh = new_bh;
		new_bh = NULL;
	}
bail:
	FUNC2(new_bh);

	FUNC8(status);
	return status;
}