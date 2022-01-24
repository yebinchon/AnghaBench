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
struct udf_fileident_bh {scalar_t__ sbh; scalar_t__ ebh; } ;
struct kernel_lb_addr {int dummy; } ;
struct inode {scalar_t__ i_ino; int i_nlink; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mtime; } ;
struct TYPE_2__ {int /*<<< orphan*/  extLocation; } ;
struct fileIdentDesc {TYPE_1__ icb; } ;
struct dentry {int /*<<< orphan*/  d_name; struct inode* d_inode; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct kernel_lb_addr FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,int) ; 
 int FUNC7 (struct inode*,struct fileIdentDesc*,struct udf_fileident_bh*,struct fileIdentDesc*) ; 
 struct fileIdentDesc* FUNC8 (struct inode*,int /*<<< orphan*/ *,struct udf_fileident_bh*,struct fileIdentDesc*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct kernel_lb_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct inode *dir, struct dentry *dentry)
{
	int retval;
	struct inode *inode = dentry->d_inode;
	struct udf_fileident_bh fibh;
	struct fileIdentDesc *fi;
	struct fileIdentDesc cfi;
	struct kernel_lb_addr tloc;

	retval = -ENOENT;
	FUNC4();
	fi = FUNC8(dir, &dentry->d_name, &fibh, &cfi);
	if (!fi)
		goto out;

	retval = -EIO;
	tloc = FUNC3(cfi.icb.extLocation);
	if (FUNC9(dir->i_sb, &tloc, 0) != inode->i_ino)
		goto end_unlink;

	if (!inode->i_nlink) {
		FUNC6("Deleting nonexistent file (%lu), %d\n",
			  inode->i_ino, inode->i_nlink);
		inode->i_nlink = 1;
	}
	retval = FUNC7(dir, fi, &fibh, &cfi);
	if (retval)
		goto end_unlink;
	dir->i_ctime = dir->i_mtime = FUNC1(dir->i_sb);
	FUNC5(dir);
	FUNC2(inode);
	inode->i_ctime = dir->i_ctime;
	retval = 0;

end_unlink:
	if (fibh.sbh != fibh.ebh)
		FUNC0(fibh.ebh);
	FUNC0(fibh.sbh);

out:
	FUNC10();
	return retval;
}