#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct qstr {char const* name; scalar_t__ hash; int /*<<< orphan*/  len; } ;
struct path {TYPE_2__* dentry; int /*<<< orphan*/  mnt; } ;
struct file_operations {scalar_t__ owner; } ;
struct file {int f_flags; void* private_data; scalar_t__ f_version; scalar_t__ f_pos; int /*<<< orphan*/  f_mapping; } ;
struct TYPE_10__ {int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_count; } ;
struct TYPE_9__ {int /*<<< orphan*/  d_flags; int /*<<< orphan*/ * d_op; } ;
struct TYPE_8__ {int /*<<< orphan*/  mnt_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCACHE_UNHASHED ; 
 int ENFILE ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct file* FUNC0 (int) ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 struct file* FUNC2 (struct path*,int,struct file_operations const*) ; 
 TYPE_3__* anon_inode_inode ; 
 TYPE_1__* anon_inode_mnt ; 
 int /*<<< orphan*/  anon_inodefs_dentry_operations ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,struct qstr*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct path*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

struct file *FUNC11(const char *name,
				const struct file_operations *fops,
				void *priv, int flags)
{
	struct qstr this;
	struct path path;
	struct file *file;
	int error;

	if (FUNC1(anon_inode_inode))
		return FUNC0(-ENODEV);

	if (fops->owner && !FUNC10(fops->owner))
		return FUNC0(-ENOENT);

	/*
	 * Link the inode to a directory entry by creating a unique name
	 * using the inode sequence number.
	 */
	error = -ENOMEM;
	this.name = name;
	this.len = FUNC9(name);
	this.hash = 0;
	path.dentry = FUNC4(anon_inode_mnt->mnt_sb, &this);
	if (!path.dentry)
		goto err_module;

	path.mnt = FUNC6(anon_inode_mnt);
	/*
	 * We know the anon_inode inode count is always greater than zero,
	 * so we can avoid doing an igrab() and we can use an open-coded
	 * atomic_inc().
	 */
	FUNC3(&anon_inode_inode->i_count);

	path.dentry->d_op = &anon_inodefs_dentry_operations;
	/* Do not publish this dentry inside the global dentry hash table */
	path.dentry->d_flags &= ~DCACHE_UNHASHED;
	FUNC5(path.dentry, anon_inode_inode);

	error = -ENFILE;
	file = FUNC2(&path, FMODE_READ | FMODE_WRITE, fops);
	if (!file)
		goto err_dput;
	file->f_mapping = anon_inode_inode->i_mapping;

	file->f_pos = 0;
	file->f_flags = O_RDWR | (flags & O_NONBLOCK);
	file->f_version = 0;
	file->private_data = priv;

	return file;

err_dput:
	FUNC8(&path);
err_module:
	FUNC7(fops->owner);
	return FUNC0(error);
}