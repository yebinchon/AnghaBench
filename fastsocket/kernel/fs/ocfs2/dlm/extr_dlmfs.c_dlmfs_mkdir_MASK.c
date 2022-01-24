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
struct qstr {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct inode {int dummy; } ;
struct dlmfs_inode_private {struct dlm_ctxt* ip_dlm; } ;
struct dlm_protocol_version {int dummy; } ;
struct dlm_ctxt {int dummy; } ;
struct dentry {struct qstr d_name; } ;

/* Variables and functions */
 struct dlmfs_inode_private* FUNC0 (struct inode*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 scalar_t__ O2NM_MAX_NAME_LEN ; 
 int FUNC2 (struct dlm_ctxt*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct inode* FUNC5 (struct inode*,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct dlm_ctxt* FUNC10 (struct qstr*,struct dlm_protocol_version*) ; 
 struct dlm_protocol_version user_locking_protocol ; 

__attribute__((used)) static int FUNC11(struct inode * dir,
		       struct dentry * dentry,
		       int mode)
{
	int status;
	struct inode *inode = NULL;
	struct qstr *domain = &dentry->d_name;
	struct dlmfs_inode_private *ip;
	struct dlm_ctxt *dlm;
	struct dlm_protocol_version proto = user_locking_protocol;

	FUNC8(0, "mkdir %.*s\n", domain->len, domain->name);

	/* verify that we have a proper domain */
	if (domain->len >= O2NM_MAX_NAME_LEN) {
		status = -EINVAL;
		FUNC8(ML_ERROR, "invalid domain name for directory.\n");
		goto bail;
	}

	inode = FUNC5(dir, dentry, mode | S_IFDIR);
	if (!inode) {
		status = -ENOMEM;
		FUNC9(status);
		goto bail;
	}

	ip = FUNC0(inode);

	dlm = FUNC10(domain, &proto);
	if (FUNC1(dlm)) {
		status = FUNC2(dlm);
		FUNC8(ML_ERROR, "Error %d could not register domain \"%.*s\"\n",
		     status, domain->len, domain->name);
		goto bail;
	}
	ip->ip_dlm = dlm;

	FUNC6(dir);
	FUNC3(dentry, inode);
	FUNC4(dentry);	/* Extra count - pin the dentry in core */

	status = 0;
bail:
	if (status < 0)
		FUNC7(inode);
	return status;
}