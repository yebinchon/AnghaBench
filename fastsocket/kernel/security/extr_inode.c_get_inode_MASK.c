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
struct inode {int i_mode; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
#define  S_IFDIR 129 
 int S_IFMT ; 
#define  S_IFREG 128 
 int /*<<< orphan*/  default_file_ops ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int,int /*<<< orphan*/ ) ; 
 struct inode* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  simple_dir_inode_operations ; 
 int /*<<< orphan*/  simple_dir_operations ; 

__attribute__((used)) static struct inode *FUNC3(struct super_block *sb, int mode, dev_t dev)
{
	struct inode *inode = FUNC2(sb);

	if (inode) {
		inode->i_mode = mode;
		inode->i_atime = inode->i_mtime = inode->i_ctime = CURRENT_TIME;
		switch (mode & S_IFMT) {
		default:
			FUNC1(inode, mode, dev);
			break;
		case S_IFREG:
			inode->i_fop = &default_file_ops;
			break;
		case S_IFDIR:
			inode->i_op = &simple_dir_inode_operations;
			inode->i_fop = &simple_dir_operations;

			/* directory inodes start off with i_nlink == 2 (for "." entry) */
			FUNC0(inode);
			break;
		}
	}
	return inode;
}