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
struct inode {int i_ino; int i_nlink; int /*<<< orphan*/  i_count; struct super_block* i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; scalar_t__ len; } ;
struct dentry {void* d_fsdata; TYPE_1__ d_name; } ;
struct buffer_head {int b_blocknr; } ;
typedef  int s32 ;
typedef  void* __be32 ;
struct TYPE_6__ {void* key; void* ptype; } ;
struct TYPE_5__ {void* link_chain; void* original; void* parent; void* stype; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct buffer_head*) ; 
 TYPE_2__* FUNC1 (struct super_block*,struct buffer_head*) ; 
 int EIO ; 
 int ENOSPC ; 
#define  ST_LINKDIR 129 
#define  ST_LINKFILE 128 
 int T_SHORT ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*,scalar_t__) ; 
 int FUNC3 (struct inode*,int) ; 
 struct buffer_head* FUNC4 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int) ; 
 struct buffer_head* FUNC9 (struct super_block*,int) ; 
 int FUNC10 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (void*) ; 
 void* FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int,int,int,int /*<<< orphan*/ ,int) ; 

int
FUNC21(struct inode *dir, struct inode *inode, struct dentry *dentry, s32 type)
{
	struct super_block *sb = dir->i_sb;
	struct buffer_head *inode_bh = NULL;
	struct buffer_head *bh = NULL;
	u32 block = 0;
	int retval;

	FUNC20("AFFS: add_entry(dir=%u, inode=%u, \"%*s\", type=%d)\n", (u32)dir->i_ino,
	         (u32)inode->i_ino, (int)dentry->d_name.len, dentry->d_name.name, type);

	retval = -EIO;
	bh = FUNC4(sb, inode->i_ino);
	if (!bh)
		goto done;

	FUNC12(inode);
	switch (type) {
	case ST_LINKFILE:
	case ST_LINKDIR:
		retval = -ENOSPC;
		block = FUNC3(dir, dir->i_ino);
		if (!block)
			goto err;
		retval = -EIO;
		inode_bh = bh;
		bh = FUNC9(sb, block);
		if (!bh)
			goto err;
		break;
	default:
		break;
	}

	FUNC0(bh)->ptype = FUNC17(T_SHORT);
	FUNC0(bh)->key = FUNC17(bh->b_blocknr);
	FUNC6(FUNC1(sb, bh)->name, dentry);
	FUNC1(sb, bh)->stype = FUNC17(type);
	FUNC1(sb, bh)->parent = FUNC17(dir->i_ino);

	if (inode_bh) {
		__be32 chain;
	       	chain = FUNC1(sb, inode_bh)->link_chain;
		FUNC1(sb, bh)->original = FUNC17(inode->i_ino);
		FUNC1(sb, bh)->link_chain = chain;
		FUNC1(sb, inode_bh)->link_chain = FUNC17(block);
		FUNC2(inode_bh, block - FUNC16(chain));
		FUNC19(inode_bh, inode);
		inode->i_nlink = 2;
		FUNC15(&inode->i_count);
	}
	FUNC7(sb, bh);
	FUNC19(bh, inode);
	dentry->d_fsdata = (void *)(long)bh->b_blocknr;

	FUNC11(dir);
	retval = FUNC10(dir, bh);
	FUNC19(bh, inode);
	FUNC13(dir);
	FUNC14(inode);

	FUNC18(dentry, inode);
done:
	FUNC5(inode_bh);
	FUNC5(bh);
	return retval;
err:
	if (block)
		FUNC8(sb, block);
	FUNC14(inode);
	goto done;
}