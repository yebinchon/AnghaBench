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
struct ocfs2_super {int dummy; } ;
struct ocfs2_inline_data {int /*<<< orphan*/  id_data; int /*<<< orphan*/  id_count; } ;
struct TYPE_2__ {struct ocfs2_inline_data i_data; } ;
struct ocfs2_dinode {TYPE_1__ id2; } ;
struct inode {int i_nlink; int /*<<< orphan*/  i_blocks; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct inode*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 

__attribute__((used)) static int FUNC9(struct ocfs2_super *osb,
				 handle_t *handle,
				 struct inode *parent,
				 struct inode *inode,
				 struct buffer_head *di_bh)
{
	int ret;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
	struct ocfs2_inline_data *data = &di->id2.i_data;
	unsigned int size = FUNC2(data->id_count);

	ret = FUNC6(handle, FUNC0(inode), di_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC3(ret);
		goto out;
	}

	FUNC4(inode, parent, data->id_data, size);

	FUNC7(handle, di_bh);
	if (ret) {
		FUNC3(ret);
		goto out;
	}

	FUNC1(inode, size);
	inode->i_nlink = 2;
	inode->i_blocks = FUNC5(inode);

	ret = FUNC8(handle, inode, di_bh);
	if (ret < 0)
		FUNC3(ret);

out:
	return ret;
}