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
struct fuse_write_in {int /*<<< orphan*/  lock_owner; int /*<<< orphan*/  write_flags; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {size_t size; } ;
struct TYPE_5__ {TYPE_1__ out; struct fuse_write_in in; } ;
struct TYPE_6__ {TYPE_2__ write; } ;
struct fuse_req {TYPE_3__ misc; } ;
struct fuse_io_priv {scalar_t__ async; struct file* file; } ;
struct fuse_file {struct fuse_conn* fc; } ;
struct fuse_conn {int dummy; } ;
struct file {int /*<<< orphan*/  f_flags; struct fuse_file* private_data; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/ * fl_owner_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUSE_WRITE_LOCKOWNER ; 
 size_t FUNC0 (struct fuse_conn*,struct fuse_req*,size_t,struct fuse_io_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_conn*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_req*,struct fuse_file*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static size_t FUNC4(struct fuse_req *req, struct fuse_io_priv *io,
			      loff_t pos, size_t count, fl_owner_t owner)
{
	struct file *file = io->file;
	struct fuse_file *ff = file->private_data;
	struct fuse_conn *fc = ff->fc;
	struct fuse_write_in *inarg = &req->misc.write.in;

	FUNC3(req, ff, pos, count);
	inarg->flags = file->f_flags;
	if (owner != NULL) {
		inarg->write_flags |= FUSE_WRITE_LOCKOWNER;
		inarg->lock_owner = FUNC1(fc, owner);
	}

	if (io->async)
		return FUNC0(fc, req, count, io);

	FUNC2(fc, req);
	return req->misc.write.out.size;
}