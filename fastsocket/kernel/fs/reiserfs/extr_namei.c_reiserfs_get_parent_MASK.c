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
struct reiserfs_dir_entry {int /*<<< orphan*/  de_dir_id; int /*<<< orphan*/ * de_gen_number_bit_string; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_sb; } ;
struct dentry {struct inode* d_inode; } ;
struct cpu_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int NAME_FOUND ; 
 struct dentry* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  path_to_entry ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct inode*,char*,int,int /*<<< orphan*/ *,struct reiserfs_dir_entry*) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ,struct cpu_key*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

struct dentry *FUNC8(struct dentry *child)
{
	int retval;
	struct inode *inode = NULL;
	struct reiserfs_dir_entry de;
	FUNC1(path_to_entry);
	struct inode *dir = child->d_inode;

	if (dir->i_nlink == 0) {
		return FUNC0(-ENOENT);
	}
	de.de_gen_number_bit_string = NULL;

	FUNC6(dir->i_sb);
	retval = FUNC4(dir, "..", 2, &path_to_entry, &de);
	FUNC3(&path_to_entry);
	if (retval != NAME_FOUND) {
		FUNC7(dir->i_sb);
		return FUNC0(-ENOENT);
	}
	inode = FUNC5(dir->i_sb, (struct cpu_key *)&(de.de_dir_id));
	FUNC7(dir->i_sb);

	return FUNC2(inode);
}