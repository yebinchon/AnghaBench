#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qstr {char const* name; scalar_t__ hash; int /*<<< orphan*/  len; } ;
struct path {int /*<<< orphan*/  dentry; int /*<<< orphan*/  mnt; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_size; } ;
typedef  void file ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_4__ {struct dentry* mnt_root; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENFILE ; 
 int ENOMEM ; 
 int ENOSPC ; 
 void* FUNC0 (int) ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  MAX_LFS_FILESIZE ; 
 int S_IFREG ; 
 int S_IRWXUGO ; 
 void* FUNC2 (struct path*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct path*) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 TYPE_1__* shm_mnt ; 
 scalar_t__ FUNC8 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shmem_file_operations ; 
 struct inode* FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

struct file *FUNC12(const char *name, loff_t size, unsigned long flags)
{
	int error;
	struct file *file;
	struct inode *inode;
	struct path path;
	struct dentry *root;
	struct qstr this;

	if (FUNC1(shm_mnt))
		return (void *)shm_mnt;

	if (size < 0 || size > MAX_LFS_FILESIZE)
		return FUNC0(-EINVAL);

	if (FUNC8(flags, size))
		return FUNC0(-ENOMEM);

	error = -ENOMEM;
	this.name = name;
	this.len = FUNC11(name);
	this.hash = 0; /* will go */
	root = shm_mnt->mnt_root;
	path.dentry = FUNC3(root, &this);
	if (!path.dentry)
		goto put_memory;
	path.mnt = FUNC5(shm_mnt);

	error = -ENOSPC;
	inode = FUNC9(root->d_sb, S_IFREG | S_IRWXUGO, 0, flags);
	if (!inode)
		goto put_dentry;

	FUNC4(path.dentry, inode);
	inode->i_size = size;
	inode->i_nlink = 0;	/* It is unlinked */
#ifndef CONFIG_MMU
	error = FUNC7(inode, size);
	if (error)
		goto put_dentry;
#endif

	error = -ENFILE;
	file = FUNC2(&path, FMODE_WRITE | FMODE_READ,
		  &shmem_file_operations);
	if (!file)
		goto put_dentry;

	return file;

put_dentry:
	FUNC6(&path);
put_memory:
	FUNC10(flags, size);
	return FUNC0(error);
}