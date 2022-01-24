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
struct vfsmount {int dummy; } ;
struct super_operations {int dummy; } ;
struct super_block {unsigned long s_magic; int s_time_gran; int /*<<< orphan*/  s_flags; struct dentry* s_root; struct super_operations const* s_op; int /*<<< orphan*/  s_blocksize_bits; int /*<<< orphan*/  s_blocksize; int /*<<< orphan*/  s_maxbytes; } ;
struct qstr {char* name; int /*<<< orphan*/  len; } ;
struct inode {int i_ino; int i_mode; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; } ;
struct file_system_type {int dummy; } ;
struct dentry {struct dentry* d_parent; struct super_block* d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  MAX_LFS_FILESIZE ; 
 int /*<<< orphan*/  MS_ACTIVE ; 
 int /*<<< orphan*/  MS_NOUSER ; 
 int /*<<< orphan*/  PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct super_block*) ; 
 int S_IFDIR ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ *,struct qstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct inode* FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  set_anon_super ; 
 struct super_block* FUNC7 (struct file_system_type*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct vfsmount*,struct super_block*) ; 
 struct super_operations const simple_super_operations ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int FUNC10(struct file_system_type *fs_type, char *name,
	const struct super_operations *ops, unsigned long magic,
	struct vfsmount *mnt)
{
	struct super_block *s = FUNC7(fs_type, NULL, set_anon_super, NULL);
	struct dentry *dentry;
	struct inode *root;
	struct qstr d_name = {.name = name, .len = FUNC9(name)};

	if (FUNC0(s))
		return FUNC1(s);

	s->s_flags = MS_NOUSER;
	s->s_maxbytes = MAX_LFS_FILESIZE;
	s->s_blocksize = PAGE_SIZE;
	s->s_blocksize_bits = PAGE_SHIFT;
	s->s_magic = magic;
	s->s_op = ops ? ops : &simple_super_operations;
	s->s_time_gran = 1;
	root = FUNC6(s);
	if (!root)
		goto Enomem;
	/*
	 * since this is the first inode, make it number 1. New inodes created
	 * after this must take care not to collide with it (by passing
	 * max_reserved of 1 to iunique).
	 */
	root->i_ino = 1;
	root->i_mode = S_IFDIR | S_IRUSR | S_IWUSR;
	root->i_atime = root->i_mtime = root->i_ctime = CURRENT_TIME;
	dentry = FUNC2(NULL, &d_name);
	if (!dentry) {
		FUNC5(root);
		goto Enomem;
	}
	dentry->d_sb = s;
	dentry->d_parent = dentry;
	FUNC3(dentry, root);
	s->s_root = dentry;
	s->s_flags |= MS_ACTIVE;
	FUNC8(mnt, s);
	return 0;

Enomem:
	FUNC4(s);
	return -ENOMEM;
}