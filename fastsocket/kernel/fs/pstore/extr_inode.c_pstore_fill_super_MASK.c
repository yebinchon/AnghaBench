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
struct super_block {int s_time_gran; struct dentry* s_root; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; int /*<<< orphan*/  s_blocksize_bits; int /*<<< orphan*/  s_blocksize; int /*<<< orphan*/  s_maxbytes; } ;
struct inode {int /*<<< orphan*/ * i_op; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MAX_LFS_FILESIZE ; 
 int /*<<< orphan*/  PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  PSTOREFS_MAGIC ; 
 int S_IFDIR ; 
 struct dentry* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  pstore_dir_inode_operations ; 
 struct inode* FUNC3 (struct super_block*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pstore_ops ; 
 struct super_block* pstore_sb ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,void*) ; 

int FUNC6(struct super_block *sb, void *data, int silent)
{
	struct inode *inode = NULL;
	struct dentry *root;
	int err;

	FUNC5(sb, data);

	pstore_sb = sb;

	sb->s_maxbytes		= MAX_LFS_FILESIZE;
	sb->s_blocksize		= PAGE_CACHE_SIZE;
	sb->s_blocksize_bits	= PAGE_CACHE_SHIFT;
	sb->s_magic		= PSTOREFS_MAGIC;
	sb->s_op		= &pstore_ops;
	sb->s_time_gran		= 1;

	FUNC2(data);

	inode = FUNC3(sb, NULL, S_IFDIR | 0755, 0);
	if (!inode) {
		err = -ENOMEM;
		goto fail;
	}
	/* override ramfs "dir" options so we catch unlink(2) */
	inode->i_op = &pstore_dir_inode_operations;

	root = FUNC0(inode);
	sb->s_root = root;
	if (!root) {
		err = -ENOMEM;
		goto fail;
	}

	FUNC4(0);

	return 0;
fail:
	FUNC1(inode);
	return err;
}