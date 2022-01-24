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
typedef  int /*<<< orphan*/  vattr ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ctime; } ;
struct iattr {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct coda_vattr {int /*<<< orphan*/  va_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int /*<<< orphan*/  C_VNON ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct iattr*,struct coda_vattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct coda_vattr*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct coda_vattr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct coda_vattr*) ; 

int FUNC8(struct dentry *de, struct iattr *iattr)
{
	struct inode *inode = de->d_inode;
	struct coda_vattr vattr;
	int error;

	FUNC4();
	
	FUNC5(&vattr, 0, sizeof(vattr)); 

	inode->i_ctime = CURRENT_TIME_SEC;
	FUNC2(iattr, &vattr);
	vattr.va_type = C_VNON; /* cannot set type */

	/* Venus is responsible for truncating the container-file!!! */
	error = FUNC7(inode->i_sb, FUNC1(inode), &vattr);

	if ( !error ) {
	        FUNC3(inode, &vattr); 
		FUNC0(inode);
	}

	FUNC6();

	return error;
}