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
struct msdos_dir_entry {int dummy; } ;
struct inode {int i_version; int /*<<< orphan*/  i_ino; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 int /*<<< orphan*/  MSDOS_ROOT_INO ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,struct msdos_dir_entry*) ; 
 struct inode* FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC7 (struct super_block*) ; 

struct inode *FUNC8(struct super_block *sb,
			struct msdos_dir_entry *de, loff_t i_pos)
{
	struct inode *inode;
	int err;

	inode = FUNC3(sb, i_pos);
	if (inode)
		goto out;
	inode = FUNC7(sb);
	if (!inode) {
		inode = FUNC0(-ENOMEM);
		goto out;
	}
	inode->i_ino = FUNC6(sb, MSDOS_ROOT_INO);
	inode->i_version = 1;
	err = FUNC2(inode, de);
	if (err) {
		FUNC5(inode);
		inode = FUNC0(err);
		goto out;
	}
	FUNC1(inode, i_pos);
	FUNC4(inode);
out:
	return inode;
}