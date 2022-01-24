#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct path {TYPE_2__* dentry; } ;
struct inode {int dummy; } ;
struct fuse_io_priv {int err; scalar_t__ bytes; int reqs; long size; TYPE_3__* iocb; scalar_t__ write; int /*<<< orphan*/  lock; } ;
struct fuse_inode {scalar_t__ attr_version; } ;
struct fuse_conn {int /*<<< orphan*/  lock; scalar_t__ attr_version; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_7__ {TYPE_1__* ki_filp; } ;
struct TYPE_6__ {struct inode* d_inode; } ;
struct TYPE_5__ {struct path f_path; } ;

/* Variables and functions */
 long EIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,long,int /*<<< orphan*/ ) ; 
 struct fuse_conn* FUNC1 (struct inode*) ; 
 struct fuse_inode* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_io_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct fuse_io_priv *io, int err, ssize_t pos)
{
	int left;

	FUNC5(&io->lock);
	if (err)
		io->err = io->err ? : err;
	else if (pos >= 0 && (io->bytes < 0 || pos < io->bytes))
		io->bytes = pos;

	left = --io->reqs;
	FUNC6(&io->lock);

	if (!left) {
		long res;

		if (io->err)
			res = io->err;
		else if (io->bytes >= 0 && io->write)
			res = -EIO;
		else {
			res = io->bytes < 0 ? io->size : io->bytes;

			if (!FUNC3(io->iocb)) {
				struct path *path = &io->iocb->ki_filp->f_path;
				struct inode *inode = path->dentry->d_inode;
				struct fuse_conn *fc = FUNC1(inode);
				struct fuse_inode *fi = FUNC2(inode);

				FUNC5(&fc->lock);
				fi->attr_version = ++fc->attr_version;
				FUNC6(&fc->lock);
			}
		}

		FUNC0(io->iocb, res, 0);
		FUNC4(io);
	}
}