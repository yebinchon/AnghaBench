#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  counter; } ;
struct inode {TYPE_1__ i_count; } ;
struct dentry {int /*<<< orphan*/  d_time; struct super_block* d_sb; struct inode* d_inode; } ;
struct TYPE_4__ {scalar_t__ unix_ext; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 char* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*,struct inode*,int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode**,char*,int /*<<< orphan*/ *,struct super_block*,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct inode**,char*,struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int FUNC10(struct dentry *dentry)
{
	int xid;
	int rc = 0;
	struct inode *inode = dentry->d_inode;
	struct super_block *sb = dentry->d_sb;
	char *full_path = NULL;

	if (inode == NULL)
		return -ENOENT;

	if (!FUNC7(inode))
		return rc;

	xid = FUNC2();

	/* can not safely grab the rename sem here if rename calls revalidate
	   since that would deadlock */
	full_path = FUNC3(dentry);
	if (full_path == NULL) {
		rc = -ENOMEM;
		goto out;
	}

	FUNC4(1, "Update attributes: %s inode 0x%p count %d dentry: 0x%p d_time "
		 "%ld jiffies %ld", full_path, inode, inode->i_count.counter,
		 dentry, dentry->d_time, jiffies);

	if (FUNC8(FUNC0(sb))->unix_ext)
		rc = FUNC6(&inode, full_path, sb, xid);
	else
		rc = FUNC5(&inode, full_path, NULL, sb,
					 xid, NULL);

out:
	FUNC9(full_path);
	FUNC1(xid);
	return rc;
}