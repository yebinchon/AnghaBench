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
typedef  int /*<<< orphan*/  u64 ;
struct fuse_open_out {int /*<<< orphan*/  open_flags; int /*<<< orphan*/  fh; } ;
struct fuse_file {int /*<<< orphan*/  open_flags; int /*<<< orphan*/  nodeid; int /*<<< orphan*/  fh; } ;
struct fuse_conn {int dummy; } ;
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FOPEN_DIRECT_IO ; 
 int FUSE_OPEN ; 
 int FUSE_OPENDIR ; 
 struct fuse_file* FUNC0 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_file*) ; 
 int FUNC3 (struct fuse_conn*,int /*<<< orphan*/ ,struct file*,int,struct fuse_open_out*) ; 

int FUNC4(struct fuse_conn *fc, u64 nodeid, struct file *file,
		 bool isdir)
{
	struct fuse_open_out outarg;
	struct fuse_file *ff;
	int err;
	int opcode = isdir ? FUSE_OPENDIR : FUSE_OPEN;

	ff = FUNC0(fc);
	if (!ff)
		return -ENOMEM;

	err = FUNC3(fc, nodeid, file, opcode, &outarg);
	if (err) {
		FUNC1(ff);
		return err;
	}

	if (isdir)
		outarg.open_flags &= ~FOPEN_DIRECT_IO;

	ff->fh = outarg.fh;
	ff->nodeid = nodeid;
	ff->open_flags = outarg.open_flags;
	file->private_data = FUNC2(ff);

	return 0;
}