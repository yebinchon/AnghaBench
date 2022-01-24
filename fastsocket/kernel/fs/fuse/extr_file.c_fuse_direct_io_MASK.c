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
struct iovec {int dummy; } ;
struct iov_iter {int dummy; } ;
struct TYPE_4__ {size_t error; } ;
struct TYPE_5__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_2__ out; } ;
struct fuse_io_priv {int /*<<< orphan*/  async; struct file* file; } ;
struct fuse_file {struct fuse_conn* fc; } ;
struct fuse_conn {size_t max_write; size_t max_read; } ;
struct file {struct fuse_file* private_data; } ;
typedef  size_t ssize_t ;
typedef  size_t loff_t ;
typedef  int /*<<< orphan*/  fl_owner_t ;
struct TYPE_6__ {int /*<<< orphan*/  files; } ;

/* Variables and functions */
 size_t EIO ; 
 scalar_t__ FUNC0 (struct fuse_req*) ; 
 size_t FUNC1 (struct fuse_req*) ; 
 TYPE_3__* current ; 
 struct fuse_req* FUNC2 (struct fuse_conn*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fuse_req*,struct iov_iter*,size_t*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC6 (struct fuse_req*,int) ; 
 size_t FUNC7 (struct fuse_req*,struct fuse_io_priv*,size_t,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (struct fuse_req*,struct fuse_io_priv*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iov_iter*,struct iovec const*,unsigned long,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC10 (size_t,size_t) ; 

ssize_t FUNC11(struct fuse_io_priv *io, const struct iovec *iov,
		       unsigned long nr_segs, size_t count, loff_t *ppos,
		       int write)
{
	struct file *file = io->file;
	struct fuse_file *ff = file->private_data;
	struct fuse_conn *fc = ff->fc;
	size_t nmax = write ? fc->max_write : fc->max_read;
	loff_t pos = *ppos;
	ssize_t res = 0;
	struct fuse_req *req;
	struct iov_iter ii;

	FUNC9(&ii, iov, nr_segs, count, 0);

	req = FUNC2(fc, FUNC4(&ii));
	if (FUNC0(req))
		return FUNC1(req);

	while (count) {
		size_t nres;
		fl_owner_t owner = current->files;
		size_t nbytes = FUNC10(count, nmax);
		int err = FUNC3(req, &ii, &nbytes, write);
		if (err) {
			res = err;
			break;
		}

		if (write)
			nres = FUNC8(req, io, pos, nbytes, owner);
		else
			nres = FUNC7(req, io, pos, nbytes, owner);

		if (!io->async)
			FUNC6(req, !write);
		if (req->out.h.error) {
			if (!res)
				res = req->out.h.error;
			break;
		} else if (nres > nbytes) {
			res = -EIO;
			break;
		}
		count -= nres;
		res += nres;
		pos += nres;
		if (nres != nbytes)
			break;
		if (count) {
			FUNC5(fc, req);
			req = FUNC2(fc, FUNC4(&ii));
			if (FUNC0(req))
				break;
		}
	}
	if (!FUNC0(req))
		FUNC5(fc, req);
	if (res > 0)
		*ppos = pos;

	return res;
}