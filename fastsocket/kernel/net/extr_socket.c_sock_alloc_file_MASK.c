#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct socket {struct file* file; } ;
struct qstr {char* name; } ;
struct path {TYPE_4__* dentry; int /*<<< orphan*/  mnt; } ;
struct file {int f_flags; struct socket* private_data; scalar_t__ f_pos; } ;
struct TYPE_11__ {int /*<<< orphan*/ * i_fop; } ;
struct TYPE_10__ {TYPE_1__* d_inode; int /*<<< orphan*/  d_flags; int /*<<< orphan*/ * d_op; } ;
struct TYPE_9__ {int /*<<< orphan*/  mnt_sb; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCACHE_UNHASHED ; 
 int ENFILE ; 
 int ENOMEM ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 TYPE_5__* FUNC0 (struct socket*) ; 
 struct file* FUNC1 (struct path*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ,struct qstr*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_5__*) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct path*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_2__* sock_mnt ; 
 int /*<<< orphan*/  socket_file_ops ; 
 int /*<<< orphan*/  sockfs_dentry_operations ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct socket *sock, struct file **f, int flags)
{
	struct qstr name = { .name = "" };
	struct path path;
	struct file *file;
	int fd;

	fd = FUNC5(flags);
	if (FUNC9(fd < 0))
		return fd;

	path.dentry = FUNC3(sock_mnt->mnt_sb, &name);
	if (FUNC9(!path.dentry)) {
		FUNC8(fd);
		return -ENOMEM;
	}
	path.mnt = FUNC6(sock_mnt);

	path.dentry->d_op = &sockfs_dentry_operations;
	/*
	 * We dont want to push this dentry into global dentry hash table.
	 * We pretend dentry is already hashed, by unsetting DCACHE_UNHASHED
	 * This permits a working /proc/$pid/fd/XXX on sockets
	 */
	path.dentry->d_flags &= ~DCACHE_UNHASHED;
	FUNC4(path.dentry, FUNC0(sock));
	FUNC0(sock)->i_fop = &socket_file_ops;

	file = FUNC1(&path, FMODE_READ | FMODE_WRITE,
		  &socket_file_ops);
	if (FUNC9(!file)) {
		/* drop dentry, keep inode */
		FUNC2(&path.dentry->d_inode->i_count);
		FUNC7(&path);
		FUNC8(fd);
		return -ENFILE;
	}

	sock->file = file;
	file->f_flags = O_RDWR | (flags & O_NONBLOCK);
	file->f_pos = 0;
	file->private_data = sock;

	*f = file;
	return fd;
}