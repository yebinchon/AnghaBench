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
struct ocfs2_super {int dummy; } ;
struct ocfs2_space_resv {int l_whence; scalar_t__ l_start; scalar_t__ l_len; } ;
struct inode {int i_flags; int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; TYPE_2__* i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct buffer_head {int dummy; } ;
typedef  unsigned long long s64 ;
typedef  scalar_t__ loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_6__ {int /*<<< orphan*/  ip_alloc_sem; } ;
struct TYPE_5__ {unsigned long long s_maxbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EINVAL ; 
 int EPERM ; 
 int EROFS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INODE_UPDATE_CREDITS ; 
#define  OCFS2_IOC_RESVSP 131 
#define  OCFS2_IOC_RESVSP64 130 
#define  OCFS2_IOC_UNRESVSP 129 
#define  OCFS2_IOC_UNRESVSP64 128 
 struct ocfs2_super* FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int S_APPEND ; 
 int S_IMMUTABLE ; 
 int FUNC4 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct inode*,unsigned long long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int) ; 
 scalar_t__ FUNC16 (struct ocfs2_super*) ; 
 scalar_t__ FUNC17 (struct ocfs2_super*) ; 
 int FUNC18 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 int FUNC19 (struct inode*,struct buffer_head*,unsigned long long,scalar_t__) ; 
 int FUNC20 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,int) ; 
 int /*<<< orphan*/ * FUNC22 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC25(struct file *file, struct inode *inode,
				     loff_t f_pos, unsigned int cmd,
				     struct ocfs2_space_resv *sr,
				     int change_size)
{
	int ret;
	s64 llen;
	loff_t size;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	struct buffer_head *di_bh = NULL;
	handle_t *handle;
	unsigned long long max_off = inode->i_sb->s_maxbytes;

	if (FUNC16(osb) || FUNC17(osb))
		return -EROFS;

	FUNC10(&inode->i_mutex);

	/*
	 * This prevents concurrent writes on other nodes
	 */
	ret = FUNC20(inode, 1);
	if (ret) {
		FUNC9(ret);
		goto out;
	}

	ret = FUNC14(inode, &di_bh, 1);
	if (ret) {
		FUNC9(ret);
		goto out_rw_unlock;
	}

	if (inode->i_flags & (S_IMMUTABLE|S_APPEND)) {
		ret = -EPERM;
		goto out_inode_unlock;
	}

	switch (sr->l_whence) {
	case 0: /*SEEK_SET*/
		break;
	case 1: /*SEEK_CUR*/
		sr->l_start += f_pos;
		break;
	case 2: /*SEEK_END*/
		sr->l_start += FUNC7(inode);
		break;
	default:
		ret = -EINVAL;
		goto out_inode_unlock;
	}
	sr->l_whence = 0;

	llen = sr->l_len > 0 ? sr->l_len - 1 : sr->l_len;

	if (sr->l_start < 0
	    || sr->l_start > max_off
	    || (sr->l_start + llen) < 0
	    || (sr->l_start + llen) > max_off) {
		ret = -EINVAL;
		goto out_inode_unlock;
	}
	size = sr->l_start + sr->l_len;

	if (cmd == OCFS2_IOC_RESVSP || cmd == OCFS2_IOC_RESVSP64) {
		if (sr->l_len <= 0) {
			ret = -EINVAL;
			goto out_inode_unlock;
		}
	}

	if (file && FUNC23(file->f_path.dentry)) {
		ret = FUNC4(inode, di_bh);
		if (ret) {
			FUNC9(ret);
			goto out_inode_unlock;
		}
	}

	FUNC6(&FUNC1(inode)->ip_alloc_sem);
	switch (cmd) {
	case OCFS2_IOC_RESVSP:
	case OCFS2_IOC_RESVSP64:
		/*
		 * This takes unsigned offsets, but the signed ones we
		 * pass have been checked against overflow above.
		 */
		ret = FUNC12(inode, sr->l_start,
						       sr->l_len);
		break;
	case OCFS2_IOC_UNRESVSP:
	case OCFS2_IOC_UNRESVSP64:
		ret = FUNC19(inode, di_bh, sr->l_start,
					       sr->l_len);
		break;
	default:
		ret = -EINVAL;
	}
	FUNC24(&FUNC1(inode)->ip_alloc_sem);
	if (ret) {
		FUNC9(ret);
		goto out_inode_unlock;
	}

	/*
	 * We update c/mtime for these changes
	 */
	handle = FUNC22(osb, OCFS2_INODE_UPDATE_CREDITS);
	if (FUNC0(handle)) {
		ret = FUNC3(handle);
		FUNC9(ret);
		goto out_inode_unlock;
	}

	if (change_size && FUNC7(inode) < size)
		FUNC8(inode, size);

	inode->i_ctime = inode->i_mtime = CURRENT_TIME;
	ret = FUNC18(handle, inode, di_bh);
	if (ret < 0)
		FUNC9(ret);

	FUNC13(osb, handle);

out_inode_unlock:
	FUNC5(di_bh);
	FUNC15(inode, 1);
out_rw_unlock:
	FUNC21(inode, 1);

out:
	FUNC11(&inode->i_mutex);
	return ret;
}