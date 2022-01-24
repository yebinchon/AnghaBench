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
struct super_block {int s_time_gran; struct ramfs_fs_info* s_fs_info; struct dentry* s_root; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; int /*<<< orphan*/  s_blocksize_bits; int /*<<< orphan*/  s_blocksize; int /*<<< orphan*/  s_maxbytes; } ;
struct TYPE_2__ {int mode; } ;
struct ramfs_fs_info {TYPE_1__ mount_opts; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_LFS_FILESIZE ; 
 int /*<<< orphan*/  PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  RAMFS_MAGIC ; 
 int S_IFDIR ; 
 struct dentry* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct ramfs_fs_info*) ; 
 struct ramfs_fs_info* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct inode* FUNC4 (struct super_block*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ramfs_ops ; 
 int FUNC5 (void*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,void*) ; 

__attribute__((used)) static int FUNC7(struct super_block * sb, void * data, int silent)
{
	struct ramfs_fs_info *fsi;
	struct inode *inode = NULL;
	struct dentry *root;
	int err;

	FUNC6(sb, data);

	fsi = FUNC3(sizeof(struct ramfs_fs_info), GFP_KERNEL);
	sb->s_fs_info = fsi;
	if (!fsi) {
		err = -ENOMEM;
		goto fail;
	}

	err = FUNC5(data, &fsi->mount_opts);
	if (err)
		goto fail;

	sb->s_maxbytes		= MAX_LFS_FILESIZE;
	sb->s_blocksize		= PAGE_CACHE_SIZE;
	sb->s_blocksize_bits	= PAGE_CACHE_SHIFT;
	sb->s_magic		= RAMFS_MAGIC;
	sb->s_op		= &ramfs_ops;
	sb->s_time_gran		= 1;

	inode = FUNC4(sb, S_IFDIR | fsi->mount_opts.mode, 0);
	if (!inode) {
		err = -ENOMEM;
		goto fail;
	}

	root = FUNC0(inode);
	sb->s_root = root;
	if (!root) {
		err = -ENOMEM;
		goto fail;
	}

	return 0;
fail:
	FUNC2(fsi);
	sb->s_fs_info = NULL;
	FUNC1(inode);
	return err;
}