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
struct inode {scalar_t__ i_uid; scalar_t__ i_gid; scalar_t__ i_size; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct iattr {unsigned int ia_valid; scalar_t__ ia_uid; scalar_t__ ia_gid; scalar_t__ ia_size; } ;
struct dentry {struct inode* d_inode; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ i_disksize; } ;

/* Variables and functions */
 unsigned int const ATTR_GID ; 
 unsigned int const ATTR_MODE ; 
 int ATTR_SIZE ; 
 unsigned int const ATTR_UID ; 
 int EDQUOT ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC7 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct inode*,struct iattr*) ; 
 int FUNC13 (struct inode*,struct iattr*) ; 
 scalar_t__ FUNC14 (struct inode*,struct iattr*) ; 

int FUNC15(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = dentry->d_inode;
	int error, rc = 0;
	const unsigned int ia_valid = attr->ia_valid;

	error = FUNC12(inode, attr);
	if (error)
		return error;

	if ((ia_valid & ATTR_UID && attr->ia_uid != inode->i_uid) ||
		(ia_valid & ATTR_GID && attr->ia_gid != inode->i_gid)) {
		handle_t *handle;

		/* (user+group)*(old+new) structure, inode write (sb,
		 * inode block, ? - but truncate inode update has it) */
		handle = FUNC7(inode, 2*(FUNC2(inode->i_sb)+
					FUNC1(inode->i_sb))+3);
		if (FUNC3(handle)) {
			error = FUNC4(handle);
			goto err_out;
		}
		error = FUNC14(inode, attr) ? -EDQUOT : 0;
		if (error) {
			FUNC8(handle);
			return error;
		}
		/* Update corresponding info in inode so that everything is in
		 * one transaction */
		if (attr->ia_valid & ATTR_UID)
			inode->i_uid = attr->ia_uid;
		if (attr->ia_valid & ATTR_GID)
			inode->i_gid = attr->ia_gid;
		error = FUNC9(handle, inode);
		FUNC8(handle);
	}

	if (FUNC5(inode->i_mode) &&
	    attr->ia_valid & ATTR_SIZE && attr->ia_size < inode->i_size) {
		handle_t *handle;

		handle = FUNC7(inode, 3);
		if (FUNC3(handle)) {
			error = FUNC4(handle);
			goto err_out;
		}

		error = FUNC10(handle, inode);
		FUNC0(inode)->i_disksize = attr->ia_size;
		rc = FUNC9(handle, inode);
		if (!error)
			error = rc;
		FUNC8(handle);
	}

	rc = FUNC13(inode, attr);

	if (!rc && (ia_valid & ATTR_MODE))
		rc = FUNC6(inode);

err_out:
	FUNC11(inode->i_sb, error);
	if (!error)
		error = rc;
	return error;
}