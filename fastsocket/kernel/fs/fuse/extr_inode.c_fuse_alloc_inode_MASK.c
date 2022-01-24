#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_inode {int /*<<< orphan*/  forget_req; int /*<<< orphan*/  page_waitq; int /*<<< orphan*/  writepages; int /*<<< orphan*/  queued_writes; int /*<<< orphan*/  write_files; scalar_t__ orig_ino; scalar_t__ writectr; scalar_t__ attr_version; scalar_t__ nlookup; scalar_t__ nodeid; scalar_t__ i_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fuse_inode_cachep ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct fuse_inode* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct inode*) ; 

__attribute__((used)) static struct inode *FUNC6(struct super_block *sb)
{
	struct inode *inode;
	struct fuse_inode *fi;

	inode = FUNC4(fuse_inode_cachep, GFP_KERNEL);
	if (!inode)
		return NULL;

	fi = FUNC2(inode);
	fi->i_time = 0;
	fi->nodeid = 0;
	fi->nlookup = 0;
	fi->attr_version = 0;
	fi->writectr = 0;
	fi->orig_ino = 0;
	FUNC0(&fi->write_files);
	FUNC0(&fi->queued_writes);
	FUNC0(&fi->writepages);
	FUNC3(&fi->page_waitq);
	fi->forget_req = FUNC1(0);
	if (!fi->forget_req) {
		FUNC5(fuse_inode_cachep, inode);
		return NULL;
	}

	return inode;
}