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
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_ino; int i_nlink; struct super_block* i_sb; } ;
struct dentry {scalar_t__ d_fsdata; struct inode* d_inode; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  link_chain; int /*<<< orphan*/  stype; int /*<<< orphan*/  name; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*,struct buffer_head*) ; 
 int EIO ; 
 int ENOENT ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
#define  ST_LINKDIR 129 
#define  ST_LINKFILE 128 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*,scalar_t__) ; 
 struct buffer_head* FUNC4 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,scalar_t__) ; 
 struct inode* FUNC8 (struct super_block*,scalar_t__) ; 
 int FUNC9 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int FUNC11 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC18(struct dentry *dentry)
{
	struct inode *dir, *inode = dentry->d_inode;
	struct super_block *sb = inode->i_sb;
	struct buffer_head *bh = NULL, *link_bh = NULL;
	u32 link_ino, ino;
	int retval;

	FUNC17("AFFS: remove_link(key=%ld)\n", inode->i_ino);
	retval = -EIO;
	bh = FUNC4(sb, inode->i_ino);
	if (!bh)
		goto done;

	link_ino = (u32)(long)dentry->d_fsdata;
	if (inode->i_ino == link_ino) {
		/* we can't remove the head of the link, as its blocknr is still used as ino,
		 * so we remove the block of the first link instead.
		 */ 
		link_ino = FUNC13(FUNC0(sb, bh)->link_chain);
		link_bh = FUNC4(sb, link_ino);
		if (!link_bh)
			goto done;

		dir = FUNC8(sb, FUNC13(FUNC0(sb, link_bh)->parent));
		if (FUNC1(dir)) {
			retval = FUNC2(dir);
			goto done;
		}

		FUNC10(dir);
		FUNC6(dentry, link_ino);
		retval = FUNC11(dir, link_bh);
		if (retval) {
			FUNC12(dir);
			goto done;
		}
		FUNC15(link_bh, inode);

		FUNC16(FUNC0(sb, bh)->name, FUNC0(sb, link_bh)->name, 32);
		retval = FUNC9(dir, bh);
		if (retval) {
			FUNC12(dir);
			goto done;
		}
		FUNC15(bh, inode);

		FUNC12(dir);
		FUNC14(dir);
	} else {
		link_bh = FUNC4(sb, link_ino);
		if (!link_bh)
			goto done;
	}

	while ((ino = FUNC13(FUNC0(sb, bh)->link_chain)) != 0) {
		if (ino == link_ino) {
			__be32 ino2 = FUNC0(sb, link_bh)->link_chain;
			FUNC0(sb, bh)->link_chain = ino2;
			FUNC3(bh, FUNC13(ino2) - link_ino);
			FUNC15(bh, inode);
			retval = 0;
			/* Fix the link count, if bh is a normal header block without links */
			switch (FUNC13(FUNC0(sb, bh)->stype)) {
			case ST_LINKDIR:
			case ST_LINKFILE:
				break;
			default:
				if (!FUNC0(sb, bh)->link_chain)
					inode->i_nlink = 1;
			}
			FUNC7(sb, link_ino);
			goto done;
		}
		FUNC5(bh);
		bh = FUNC4(sb, ino);
		if (!bh)
			goto done;
	}
	retval = -ENOENT;
done:
	FUNC5(link_bh);
	FUNC5(bh);
	return retval;
}