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
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int ip_dyn_features; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct inode*,scalar_t__,size_t) ; 
 int FUNC5 (struct inode*,scalar_t__,size_t) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int) ; 
 int FUNC8 (struct inode*,scalar_t__,size_t,int*) ; 
 int FUNC9 (struct inode*) ; 
 scalar_t__ FUNC10 (struct dentry*) ; 

__attribute__((used)) static int FUNC11(struct dentry *dentry,
					 loff_t *ppos,
					 size_t count,
					 int appending,
					 int *direct_io)
{
	int ret = 0, meta_level = 0;
	struct inode *inode = dentry->d_inode;
	loff_t saved_pos, end;

	/* 
	 * We start with a read level meta lock and only jump to an ex
	 * if we need to make modifications here.
	 */
	for(;;) {
		ret = FUNC6(inode, NULL, meta_level);
		if (ret < 0) {
			meta_level = -1;
			FUNC3(ret);
			goto out;
		}

		/* Clear suid / sgid if necessary. We do this here
		 * instead of later in the write path because
		 * remove_suid() calls ->setattr without any hint that
		 * we may have already done our cluster locking. Since
		 * ocfs2_setattr() *must* take cluster locks to
		 * proceeed, this will lead us to recursively lock the
		 * inode. There's also the dinode i_size state which
		 * can be lost via setattr during extending writes (we
		 * set inode->i_size at the end of a write. */
		if (FUNC10(dentry)) {
			if (meta_level == 0) {
				FUNC7(inode, meta_level);
				meta_level = 1;
				continue;
			}

			ret = FUNC9(inode);
			if (ret < 0) {
				FUNC3(ret);
				goto out_unlock;
			}
		}

		/* work on a copy of ppos until we're sure that we won't have
		 * to recalculate it due to relocking. */
		if (appending) {
			saved_pos = FUNC1(inode);
			FUNC2(0, "O_APPEND: inode->i_size=%llu\n", saved_pos);
		} else {
			saved_pos = *ppos;
		}

		end = saved_pos + count;

		ret = FUNC5(inode, saved_pos, count);
		if (ret == 1) {
			FUNC7(inode, meta_level);
			meta_level = -1;

			ret = FUNC8(inode,
							       saved_pos,
							       count,
							       &meta_level);
		}

		if (ret < 0) {
			FUNC3(ret);
			goto out_unlock;
		}

		/*
		 * Skip the O_DIRECT checks if we don't need
		 * them.
		 */
		if (!direct_io || !(*direct_io))
			break;

		/*
		 * There's no sane way to do direct writes to an inode
		 * with inline data.
		 */
		if (FUNC0(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
			*direct_io = 0;
			break;
		}

		/*
		 * Allowing concurrent direct writes means
		 * i_size changes wouldn't be synchronized, so
		 * one node could wind up truncating another
		 * nodes writes.
		 */
		if (end > FUNC1(inode)) {
			*direct_io = 0;
			break;
		}

		/*
		 * We don't fill holes during direct io, so
		 * check for them here. If any are found, the
		 * caller will have to retake some cluster
		 * locks and initiate the io as buffered.
		 */
		ret = FUNC4(inode, saved_pos, count);
		if (ret == 1) {
			*direct_io = 0;
			ret = 0;
		} else if (ret < 0)
			FUNC3(ret);
		break;
	}

	if (appending)
		*ppos = saved_pos;

out_unlock:
	if (meta_level >= 0)
		FUNC7(inode, meta_level);

out:
	return ret;
}