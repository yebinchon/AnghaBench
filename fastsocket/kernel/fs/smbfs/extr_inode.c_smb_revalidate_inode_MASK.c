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
struct smb_sb_info {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {scalar_t__ oldmtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct smb_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct smb_sb_info* FUNC5 (struct dentry*) ; 
 int FUNC6 (struct dentry*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(struct dentry *dentry)
{
	struct smb_sb_info *s = FUNC5(dentry);
	struct inode *inode = dentry->d_inode;
	int error = 0;

	FUNC0("smb_revalidate_inode\n");
	FUNC4();

	/*
	 * Check whether we've recently refreshed the inode.
	 */
	if (FUNC7(jiffies, FUNC1(inode)->oldmtime + FUNC2(s))) {
		FUNC3("up-to-date, ino=%ld, jiffies=%lu, oldtime=%lu\n",
			inode->i_ino, jiffies, FUNC1(inode)->oldmtime);
		goto out;
	}

	error = FUNC6(dentry);
out:
	FUNC8();
	return error;
}