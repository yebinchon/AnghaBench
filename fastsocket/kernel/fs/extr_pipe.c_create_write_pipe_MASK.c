#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qstr {char* name; } ;
struct path {TYPE_3__* dentry; int /*<<< orphan*/  mnt; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct file {int f_flags; scalar_t__ f_version; int /*<<< orphan*/  f_mapping; } ;
struct TYPE_6__ {int /*<<< orphan*/  d_flags; int /*<<< orphan*/ * d_op; } ;
struct TYPE_5__ {int /*<<< orphan*/  mnt_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCACHE_UNHASHED ; 
 int ENFILE ; 
 int ENOMEM ; 
 struct file* FUNC0 (int) ; 
 int /*<<< orphan*/  FMODE_WRITE ; 
 int O_NONBLOCK ; 
 int O_WRONLY ; 
 struct file* FUNC1 (struct path*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,struct qstr*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct inode* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct path*) ; 
 TYPE_1__* pipe_mnt ; 
 int /*<<< orphan*/  pipefs_dentry_operations ; 
 int /*<<< orphan*/  write_pipefifo_fops ; 

struct file *FUNC9(int flags)
{
	int err;
	struct inode *inode;
	struct file *f;
	struct path path;
	struct qstr name = { .name = "" };

	err = -ENFILE;
	inode = FUNC5();
	if (!inode)
		goto err;

	err = -ENOMEM;
	path.dentry = FUNC2(pipe_mnt->mnt_sb, &name);
	if (!path.dentry)
		goto err_inode;
	path.mnt = FUNC7(pipe_mnt);

	path.dentry->d_op = &pipefs_dentry_operations;
	/*
	 * We dont want to publish this dentry into global dentry hash table.
	 * We pretend dentry is already hashed, by unsetting DCACHE_UNHASHED
	 * This permits a working /proc/$pid/fd/XXX on pipes
	 */
	path.dentry->d_flags &= ~DCACHE_UNHASHED;
	FUNC3(path.dentry, inode);

	err = -ENFILE;
	f = FUNC1(&path, FMODE_WRITE, &write_pipefifo_fops);
	if (!f)
		goto err_dentry;
	f->f_mapping = inode->i_mapping;

	f->f_flags = O_WRONLY | (flags & O_NONBLOCK);
	f->f_version = 0;

	return f;

 err_dentry:
	FUNC4(inode);
	FUNC8(&path);
	return FUNC0(err);

 err_inode:
	FUNC4(inode);
	FUNC6(inode);
 err:
	return FUNC0(err);
}