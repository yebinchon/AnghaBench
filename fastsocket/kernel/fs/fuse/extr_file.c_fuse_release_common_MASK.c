#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  path; } ;
struct TYPE_4__ {TYPE_1__ release; } ;
struct fuse_req {TYPE_2__ misc; } ;
struct fuse_file {struct fuse_req* reserved_req; } ;
struct file {int /*<<< orphan*/  f_path; int /*<<< orphan*/  f_flags; struct fuse_file* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fuse_file*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_file*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(struct file *file, int opcode)
{
	struct fuse_file *ff;
	struct fuse_req *req;

	ff = file->private_data;
	if (FUNC3(!ff))
		return;

	req = ff->reserved_req;
	FUNC1(ff, file->f_flags, opcode);

	/* Hold vfsmount and dentry until release is finished */
	FUNC2(&file->f_path);
	req->misc.release.path = file->f_path;

	/*
	 * Normally this will send the RELEASE request, however if
	 * some asynchronous READ or WRITE requests are outstanding,
	 * the sending will be delayed.
	 */
	FUNC0(ff);
}