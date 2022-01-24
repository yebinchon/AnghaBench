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
struct inode {scalar_t__ i_ino; int i_nlink; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; scalar_t__ i_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  extLocation; } ;
struct fileIdentDesc {TYPE_1__ icb; } ;
struct dentry {int /*<<< orphan*/  d_name; struct inode* d_inode; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct kernel_lb_addr FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct inode*,struct fileIdentDesc*,struct udf_fileident_bh*,struct fileIdentDesc*) ; 
 struct fileIdentDesc* FUNC9 (struct inode*,int /*<<< orphan*/ *,struct udf_fileident_bh*,struct fileIdentDesc*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct kernel_lb_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(struct inode *dir, struct dentry *dentry)
{
	int retval;
	struct inode *inode = dentry->d_inode;
	struct udf_fileident_bh fibh;
	struct fileIdentDesc *fi, cfi;
	struct kernel_lb_addr tloc;

	retval = -ENOENT;
	FUNC6();
	fi = FUNC9(dir, &dentry->d_name, &fibh, &cfi);
	if (!fi)
		goto out;

	retval = -EIO;
	tloc = FUNC5(cfi.icb.extLocation);
	if (FUNC10(dir->i_sb, &tloc, 0) != inode->i_ino)
		goto end_rmdir;
	retval = -ENOTEMPTY;
	if (!FUNC3(inode))
		goto end_rmdir;
	retval = FUNC8(dir, fi, &fibh, &cfi);
	if (retval)
		goto end_rmdir;
	if (inode->i_nlink != 2)
		FUNC11(inode->i_sb, "udf_rmdir",
			    "empty directory has nlink != 2 (%d)",
			    inode->i_nlink);
	FUNC1(inode);
	inode->i_size = 0;
	FUNC4(dir);
	inode->i_ctime = dir->i_ctime = dir->i_mtime =
						FUNC2(dir->i_sb);
	FUNC7(dir);

end_rmdir:
	if (fibh.sbh != fibh.ebh)
		FUNC0(fibh.ebh);
	FUNC0(fibh.sbh);

out:
	FUNC12();
	return retval;
}