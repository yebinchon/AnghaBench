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
typedef  int /*<<< orphan*/  u64 ;
struct super_block {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * backing_dev_info; } ;
struct inode {int i_state; int i_flags; int i_generation; int i_mode; TYPE_1__ i_data; } ;
struct fuse_inode {int /*<<< orphan*/  nlookup; } ;
struct fuse_conn {int /*<<< orphan*/  lock; int /*<<< orphan*/  bdi; } ;
struct fuse_attr {int mode; } ;

/* Variables and functions */
 int I_NEW ; 
 int S_IFMT ; 
 int S_NOATIME ; 
 int S_NOCMTIME ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,struct fuse_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct fuse_attr*) ; 
 int /*<<< orphan*/  fuse_inode_eq ; 
 int /*<<< orphan*/  fuse_inode_set ; 
 struct fuse_conn* FUNC2 (struct super_block*) ; 
 struct fuse_inode* FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 

struct inode *FUNC10(struct super_block *sb, u64 nodeid,
			int generation, struct fuse_attr *attr,
			u64 attr_valid, u64 attr_version)
{
	struct inode *inode;
	struct fuse_inode *fi;
	struct fuse_conn *fc = FUNC2(sb);

 retry:
	inode = FUNC4(sb, nodeid, fuse_inode_eq, fuse_inode_set, &nodeid);
	if (!inode)
		return NULL;

	if ((inode->i_state & I_NEW)) {
		inode->i_flags |= S_NOATIME|S_NOCMTIME;
		inode->i_generation = generation;
		inode->i_data.backing_dev_info = &fc->bdi;
		FUNC1(inode, attr);
		FUNC9(inode);
	} else if ((inode->i_mode ^ attr->mode) & S_IFMT) {
		/* Inode has changed type, any I/O on the old should fail */
		FUNC6(inode);
		FUNC5(inode);
		goto retry;
	}

	fi = FUNC3(inode);
	FUNC7(&fc->lock);
	fi->nlookup++;
	FUNC8(&fc->lock);
	FUNC0(inode, attr, attr_valid, attr_version);

	return inode;
}