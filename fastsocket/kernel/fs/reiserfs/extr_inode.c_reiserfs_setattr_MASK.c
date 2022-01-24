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
struct reiserfs_transaction_handle {int dummy; } ;
struct inode {scalar_t__ i_size; scalar_t__ i_uid; scalar_t__ i_gid; int /*<<< orphan*/  i_sb; } ;
struct iattr {unsigned int ia_valid; scalar_t__ ia_size; int ia_uid; int ia_gid; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {scalar_t__ i_prealloc_count; } ;

/* Variables and functions */
 int ATTR_CTIME ; 
 unsigned int ATTR_GID ; 
 unsigned int ATTR_KILL_SGID ; 
 unsigned int ATTR_KILL_SUID ; 
 int ATTR_MODE ; 
 int ATTR_MTIME ; 
 int ATTR_SIZE ; 
 unsigned int ATTR_UID ; 
 int EDQUOT ; 
 int EFBIG ; 
 int EINVAL ; 
 scalar_t__ KEY_FORMAT_3_5 ; 
 scalar_t__ MAX_NON_LFS ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ STAT_DATA_V1 ; 
 int FUNC3 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int FUNC6 (struct inode*,struct iattr*) ; 
 int FUNC7 (struct inode*,struct iattr*) ; 
 int FUNC8 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int FUNC11 (struct inode*) ; 
 int FUNC12 (struct inode*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC13 (struct reiserfs_transaction_handle*,struct inode*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct inode*,struct iattr*) ; 

int FUNC18(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = dentry->d_inode;
	int error;
	unsigned int ia_valid;

	/* must be turned off for recursive notify_change calls */
	ia_valid = attr->ia_valid &= ~(ATTR_KILL_SUID|ATTR_KILL_SGID);

	FUNC15(inode->i_sb);
	if (attr->ia_valid & ATTR_SIZE) {
		/* version 2 items will be caught by the s_maxbytes check
		 ** done for us in vmtruncate
		 */
		if (FUNC4(inode) == KEY_FORMAT_3_5 &&
		    attr->ia_size > MAX_NON_LFS) {
			error = -EFBIG;
			goto out;
		}
		/* fill in hole pointers in the expanding truncate case. */
		if (attr->ia_size > inode->i_size) {
			error = FUNC3(inode, attr->ia_size);
			if (FUNC0(inode)->i_prealloc_count > 0) {
				int err;
				struct reiserfs_transaction_handle th;
				/* we're changing at most 2 bitmaps, inode + super */
				err = FUNC8(&th, inode->i_sb, 4);
				if (!err) {
					FUNC13(&th, inode);
					err = FUNC9(&th, inode->i_sb, 4);
				}
				if (err)
					error = err;
			}
			if (error)
				goto out;
			/*
			 * file size is changed, ctime and mtime are
			 * to be updated
			 */
			attr->ia_valid |= (ATTR_MTIME | ATTR_CTIME);
		}
	}

	if ((((attr->ia_valid & ATTR_UID) && (attr->ia_uid & ~0xffff)) ||
	     ((attr->ia_valid & ATTR_GID) && (attr->ia_gid & ~0xffff))) &&
	    (FUNC5(inode) == STAT_DATA_V1)) {
		/* stat data of format v3.5 has 16 bit uid and gid */
		error = -EINVAL;
		goto out;
	}

	error = FUNC6(inode, attr);
	if (!error) {
		if ((ia_valid & ATTR_UID && attr->ia_uid != inode->i_uid) ||
		    (ia_valid & ATTR_GID && attr->ia_gid != inode->i_gid)) {
			error = FUNC12(inode, attr);

			if (!error) {
				struct reiserfs_transaction_handle th;
				int jbegin_count =
				    2 *
				    (FUNC2(inode->i_sb) +
				     FUNC1(inode->i_sb)) +
				    2;

				/* (user+group)*(old+new) structure - we count quota info and , inode write (sb, inode) */
				error =
				    FUNC8(&th, inode->i_sb,
						  jbegin_count);
				if (error)
					goto out;
				error =
				    FUNC17(inode, attr) ? -EDQUOT : 0;
				if (error) {
					FUNC9(&th, inode->i_sb,
						    jbegin_count);
					goto out;
				}
				/* Update corresponding info in inode so that everything is in
				 * one transaction */
				if (attr->ia_valid & ATTR_UID)
					inode->i_uid = attr->ia_uid;
				if (attr->ia_valid & ATTR_GID)
					inode->i_gid = attr->ia_gid;
				FUNC10(inode);
				error =
				    FUNC9(&th, inode->i_sb, jbegin_count);
			}
		}
		if (!error)
			error = FUNC7(inode, attr);
	}

	if (!error && FUNC14(inode->i_sb)) {
		if (attr->ia_valid & ATTR_MODE)
			error = FUNC11(inode);
	}

      out:
	FUNC16(inode->i_sb);
	return error;
}