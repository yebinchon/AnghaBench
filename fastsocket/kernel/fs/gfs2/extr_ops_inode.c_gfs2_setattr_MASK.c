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
struct inode {int dummy; } ;
struct iattr {int ia_valid; int /*<<< orphan*/  ia_size; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_SIZE ; 
 int ATTR_UID ; 
 int EPERM ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int FUNC4 (struct gfs2_inode*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_holder*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int FUNC7 (struct inode*,struct iattr*) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct inode*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int FUNC11 (struct inode*,struct iattr*) ; 

__attribute__((used)) static int FUNC12(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = dentry->d_inode;
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_holder i_gh;
	int error;

	error = FUNC6(ip->i_gl, LM_ST_EXCLUSIVE, 0, &i_gh);
	if (error)
		return error;

	error = -EPERM;
	if (FUNC2(inode) || FUNC1(inode))
		goto out;

	error = FUNC9(inode, attr);
	if (error)
		goto out;

	if (attr->ia_valid & ATTR_SIZE)
		error = FUNC8(inode, attr->ia_size);
	else if (attr->ia_valid & (ATTR_UID | ATTR_GID))
		error = FUNC11(inode, attr);
	else if ((attr->ia_valid & ATTR_MODE) && FUNC3(inode))
		error = FUNC4(ip, attr);
	else
		error = FUNC7(inode, attr);

out:
	if (!error)
		FUNC10(inode);
	FUNC5(&i_gh);
	return error;
}