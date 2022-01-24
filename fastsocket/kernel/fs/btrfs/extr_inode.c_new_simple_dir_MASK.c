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
struct inode {int i_mode; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_ino; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_key {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  runtime_flags; int /*<<< orphan*/  location; struct btrfs_root* root; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_EMPTY_SUBVOL_DIR_OBJECTID ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_DUMMY ; 
 int /*<<< orphan*/  CURRENT_TIME ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int S_IFDIR ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 int S_IXUGO ; 
 int /*<<< orphan*/  btrfs_dir_ro_inode_operations ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct btrfs_key*,int) ; 
 struct inode* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  simple_dir_operations ; 

__attribute__((used)) static struct inode *FUNC5(struct super_block *s,
				    struct btrfs_key *key,
				    struct btrfs_root *root)
{
	struct inode *inode = FUNC3(s);

	if (!inode)
		return FUNC1(-ENOMEM);

	FUNC0(inode)->root = root;
	FUNC2(&FUNC0(inode)->location, key, sizeof(*key));
	FUNC4(BTRFS_INODE_DUMMY, &FUNC0(inode)->runtime_flags);

	inode->i_ino = BTRFS_EMPTY_SUBVOL_DIR_OBJECTID;
	inode->i_op = &btrfs_dir_ro_inode_operations;
	inode->i_fop = &simple_dir_operations;
	inode->i_mode = S_IFDIR | S_IRUGO | S_IWUSR | S_IXUGO;
	inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME;

	return inode;
}