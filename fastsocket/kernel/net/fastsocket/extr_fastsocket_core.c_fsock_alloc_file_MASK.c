#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct socket {struct file* file; } ;
struct qstr {char* name; } ;
struct path {TYPE_2__* dentry; int /*<<< orphan*/  mnt; } ;
struct file {int f_mode; int f_flags; struct path f_path; int /*<<< orphan*/ * f_epi; int /*<<< orphan*/ * sub_file; struct socket* private_data; scalar_t__ f_pos; int /*<<< orphan*/ * f_op; int /*<<< orphan*/  f_mapping; } ;
struct TYPE_7__ {int /*<<< orphan*/ * i_fop; } ;
struct TYPE_6__ {TYPE_1__* d_inode; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct file*,...) ; 
 int ENFILE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct socket*) ; 
 int /*<<< orphan*/  ERR ; 
 int FMODE_BIND_EPI ; 
 int FMODE_FASTSOCKET ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 TYPE_4__* FUNC2 (struct socket*) ; 
 scalar_t__ enable_fast_epoll ; 
 int /*<<< orphan*/  fastsocket_mnt ; 
 TYPE_2__* FUNC3 (struct socket*,int /*<<< orphan*/ *,struct qstr*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  fsocket_file_ops ; 
 struct file* FUNC5 () ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct socket *sock, struct file **f, int flags)
{
	int fd;
	struct qstr name = { .name = "" };
	struct path path;
	struct file *file;

	fd = FUNC6(flags);

	if (FUNC8(fd < 0)) {
		FUNC1(ERR, "Socket 0x%p get unused fd failed\n", sock);
		return fd;
	}

	path.dentry = FUNC3(sock, NULL, &name);
	if (FUNC8(!path.dentry)) {
		FUNC1(ERR, "Socket 0x%p allocate dentry failed\n", sock);
		FUNC7(fd);
		return -ENOMEM;
	}

	path.mnt = fastsocket_mnt;

	FUNC2(sock)->i_fop = &fsocket_file_ops;

	file = FUNC5();
	if (FUNC8(!file)) {
		FUNC1(ERR, "Socket 0x%p allocate empty file failed\n", sock);
		FUNC4(path.dentry);
		FUNC7(fd);
		return -ENFILE;
	}

	FUNC0(DEBUG, "Allocate file 0x%p\n", file);

	file->f_path = path;
	file->f_mapping = path.dentry->d_inode->i_mapping;
	file->f_mode = FMODE_READ | FMODE_WRITE | FMODE_FASTSOCKET;
	if (enable_fast_epoll)
		file->f_mode |= FMODE_BIND_EPI;
	file->f_op = &fsocket_file_ops;

	sock->file = file;

	file->f_flags = O_RDWR | (flags & O_NONBLOCK);
	file->f_pos = 0;
	file->private_data = sock;

	file->sub_file = NULL;
	file->f_epi = NULL;

	*f = file;

	FUNC0(DEBUG, "fsock_alloc_file: file(%p) dentry(%p)", file, file->f_path.dentry);

	return fd;
}