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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dentry; } ;
struct file {int f_mode; TYPE_1__ f_path; } ;
typedef  int fmode_t ;
struct TYPE_6__ {int fd; } ;
struct TYPE_5__ {int mode; int fd; } ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_3__* FUNC0 (struct file*) ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  append ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,int,int,int /*<<< orphan*/ ) ; 

int FUNC6(struct inode *ino, struct file *file)
{
	char *name;
	fmode_t mode = 0;
	int r = 0, w = 0, fd;

	mode = file->f_mode & (FMODE_READ | FMODE_WRITE);
	if ((mode & FUNC1(ino)->mode) == mode)
		return 0;

	/*
	 * The file may already have been opened, but with the wrong access,
	 * so this resets things and reopens the file with the new access.
	 */
	if (FUNC1(ino)->fd != -1) {
		FUNC2(&FUNC1(ino)->fd);
		FUNC1(ino)->fd = -1;
	}

	FUNC1(ino)->mode |= mode;
	if (FUNC1(ino)->mode & FMODE_READ)
		r = 1;
	if (FUNC1(ino)->mode & FMODE_WRITE)
		w = 1;
	if (w)
		r = 1;

	name = FUNC3(file->f_path.dentry, 0);
	if (name == NULL)
		return -ENOMEM;

	fd = FUNC5(name, r, w, append);
	FUNC4(name);
	if (fd < 0)
		return fd;
	FUNC0(file)->fd = fd;

	return 0;
}