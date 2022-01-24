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
typedef  int /*<<< orphan*/  u64 ;
struct omfs_inode {int /*<<< orphan*/  i_sibling; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/ * b_data; } ;
struct TYPE_4__ {char* name; int len; } ;
struct dentry {TYPE_2__ d_name; TYPE_1__* d_parent; } ;
struct buffer_head {int /*<<< orphan*/  i_sb; int /*<<< orphan*/ * b_data; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 struct inode* FUNC9 (struct inode*,char const*,int,int*) ; 
 struct inode* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC11 (struct inode*,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ; 
 struct inode* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct dentry *dentry)
{
	struct inode *dir = dentry->d_parent->d_inode;
	struct inode *dirty;
	const char *name = dentry->d_name.name;
	int namelen = dentry->d_name.len;
	struct omfs_inode *oi;
	struct buffer_head *bh, *bh2;
	__be64 *entry, next;
	u64 block, prev;
	int ofs;
	int err = -ENOMEM;

	/* delete the proper node in the bucket's linked list */
	bh = FUNC9(dir, name, namelen, &ofs);
	if (!bh)
		goto out;

	entry = (__be64 *) &bh->b_data[ofs];
	block = FUNC3(*entry);

	bh2 = FUNC11(dir, block, name, namelen, &prev);
	if (FUNC0(bh2)) {
		err = FUNC2(bh2);
		goto out_free_bh;
	}

	oi = (struct omfs_inode *) bh2->b_data;
	next = oi->i_sibling;
	FUNC4(bh2);

	if (prev != ~0) {
		/* found in middle of list, get list ptr */
		FUNC4(bh);
		bh = FUNC12(dir->i_sb,
			FUNC5(FUNC1(dir->i_sb), prev));
		if (!bh)
			goto out;

		oi = (struct omfs_inode *) bh->b_data;
		entry = &oi->i_sibling;
	}

	*entry = next;
	FUNC7(bh);

	if (prev != ~0) {
		dirty = FUNC10(dir->i_sb, prev);
		if (!FUNC0(dirty)) {
			FUNC8(dirty);
			FUNC6(dirty);
		}
	}

	err = 0;
out_free_bh:
	FUNC4(bh);
out:
	return err;
}