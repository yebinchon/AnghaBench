#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {TYPE_1__* s_root; } ;
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; struct super_block* i_sb; } ;
struct fat_slot_info {int /*<<< orphan*/  bh; int /*<<< orphan*/  i_pos; int /*<<< orphan*/  de; } ;
struct dentry {int d_flags; TYPE_3__* d_parent; int /*<<< orphan*/  d_time; int /*<<< orphan*/  d_op; int /*<<< orphan*/  d_name; } ;
struct TYPE_6__ {TYPE_2__* d_inode; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_version; } ;
struct TYPE_4__ {int /*<<< orphan*/  d_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DCACHE_DISCONNECTED ; 
 int ENOENT ; 
 struct dentry* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*,struct dentry*) ; 
 struct dentry* FUNC8 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 struct inode* FUNC10 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*) ; 
 int FUNC14 (struct inode*,int /*<<< orphan*/ *,struct fat_slot_info*) ; 

__attribute__((used)) static struct dentry *FUNC15(struct inode *dir, struct dentry *dentry,
				  struct nameidata *nd)
{
	struct super_block *sb = dir->i_sb;
	struct fat_slot_info sinfo;
	struct inode *inode;
	struct dentry *alias;
	int err;

	FUNC12(sb);

	err = FUNC14(dir, &dentry->d_name, &sinfo);
	if (err) {
		if (err == -ENOENT) {
			inode = NULL;
			goto out;
		}
		goto error;
	}

	inode = FUNC10(sb, sinfo.de, sinfo.i_pos);
	FUNC5(sinfo.bh);
	if (FUNC2(inode)) {
		err = FUNC3(inode);
		goto error;
	}

	alias = FUNC6(inode);
	if (alias && !(alias->d_flags & DCACHE_DISCONNECTED)) {
		/*
		 * This inode has non DCACHE_DISCONNECTED dentry. This
		 * means, the user did ->lookup() by an another name
		 * (longname vs 8.3 alias of it) in past.
		 *
		 * Switch to new one for reason of locality if possible.
		 */
		FUNC0(FUNC9(alias));
		if (!FUNC4(inode->i_mode))
			FUNC7(alias, dentry);
		FUNC11(inode);
		FUNC13(sb);
		return alias;
	}
out:
	FUNC13(sb);
	dentry->d_op = sb->s_root->d_op;
	dentry->d_time = dentry->d_parent->d_inode->i_version;
	dentry = FUNC8(inode, dentry);
	if (dentry) {
		dentry->d_op = sb->s_root->d_op;
		dentry->d_time = dentry->d_parent->d_inode->i_version;
	}
	return dentry;

error:
	FUNC13(sb);
	return FUNC1(err);
}