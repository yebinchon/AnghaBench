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
typedef  int u32 ;
struct super_block {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int b_blocknr; struct super_block* i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; scalar_t__ len; } ;
struct dentry {int /*<<< orphan*/ * d_op; void* d_fsdata; TYPE_1__ d_name; } ;
struct buffer_head {int b_blocknr; struct super_block* i_sb; } ;
struct TYPE_6__ {int s_flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  original; int /*<<< orphan*/  stype; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct super_block*) ; 
 TYPE_2__* FUNC1 (struct super_block*,struct inode*) ; 
 struct dentry* FUNC2 (struct inode*) ; 
 struct dentry* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int SF_INTL ; 
#define  ST_LINKFILE 128 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  affs_dentry_operations ; 
 struct inode* FUNC7 (struct inode*,struct dentry*) ; 
 struct inode* FUNC8 (struct super_block*,int) ; 
 int /*<<< orphan*/  affs_intl_dentry_operations ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int /*<<< orphan*/ ) ; 

struct dentry *
FUNC14(struct inode *dir, struct dentry *dentry, struct nameidata *nd)
{
	struct super_block *sb = dir->i_sb;
	struct buffer_head *bh;
	struct inode *inode = NULL;

	FUNC13("AFFS: lookup(\"%.*s\")\n",(int)dentry->d_name.len,dentry->d_name.name);

	FUNC9(dir);
	bh = FUNC7(dir, dentry);
	FUNC10(dir);
	if (FUNC4(bh))
		return FUNC2(bh);
	if (bh) {
		u32 ino = bh->b_blocknr;

		/* store the real header ino in d_fsdata for faster lookups */
		dentry->d_fsdata = (void *)(long)ino;
		switch (FUNC11(FUNC1(sb, bh)->stype)) {
		//link to dirs disabled
		//case ST_LINKDIR:
		case ST_LINKFILE:
			ino = FUNC11(FUNC1(sb, bh)->original);
		}
		FUNC6(bh);
		inode = FUNC8(sb, ino);
		if (FUNC4(inode))
			return FUNC3(FUNC5(inode));
	}
	dentry->d_op = FUNC0(sb)->s_flags & SF_INTL ? &affs_intl_dentry_operations : &affs_dentry_operations;
	FUNC12(dentry, inode);
	return NULL;
}