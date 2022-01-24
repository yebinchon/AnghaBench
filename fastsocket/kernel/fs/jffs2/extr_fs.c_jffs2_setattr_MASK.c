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
struct iattr {int ia_valid; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int ATTR_MODE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct iattr*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct iattr*) ; 

int FUNC3(struct dentry *dentry, struct iattr *iattr)
{
	int rc;

	rc = FUNC0(dentry->d_inode, iattr);
	if (rc)
		return rc;

	rc = FUNC2(dentry->d_inode, iattr);
	if (!rc && (iattr->ia_valid & ATTR_MODE))
		rc = FUNC1(dentry->d_inode);

	return rc;
}