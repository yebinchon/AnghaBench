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
struct super_block {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fat_slot_info {int /*<<< orphan*/  bh; int /*<<< orphan*/  i_pos; int /*<<< orphan*/  de; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/ * d_op; TYPE_1__ d_name; } ;

/* Variables and functions */
 int ENOENT ; 
 struct dentry* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC4 (struct inode*,struct dentry*) ; 
 struct inode* FUNC5 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  msdos_dentry_operations ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fat_slot_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 

__attribute__((used)) static struct dentry *FUNC9(struct inode *dir, struct dentry *dentry,
				   struct nameidata *nd)
{
	struct super_block *sb = dir->i_sb;
	struct fat_slot_info sinfo;
	struct inode *inode;
	int err;

	FUNC6(sb);

	err = FUNC7(dir, dentry->d_name.name, dentry->d_name.len, &sinfo);
	if (err) {
		if (err == -ENOENT) {
			inode = NULL;
			goto out;
		}
		goto error;
	}

	inode = FUNC5(sb, sinfo.de, sinfo.i_pos);
	FUNC3(sinfo.bh);
	if (FUNC1(inode)) {
		err = FUNC2(inode);
		goto error;
	}
out:
	FUNC8(sb);
	dentry->d_op = &msdos_dentry_operations;
	dentry = FUNC4(inode, dentry);
	if (dentry)
		dentry->d_op = &msdos_dentry_operations;
	return dentry;

error:
	FUNC8(sb);
	return FUNC0(err);
}