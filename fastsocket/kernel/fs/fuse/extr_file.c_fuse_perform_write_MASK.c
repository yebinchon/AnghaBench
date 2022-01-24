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
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {int error; } ;
struct TYPE_4__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_2__ out; } ;
struct fuse_conn {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  size_t ssize_t ;
typedef  size_t loff_t ;

/* Variables and functions */
 size_t EIO ; 
 scalar_t__ FUNC0 (struct fuse_req*) ; 
 int FUNC1 (struct fuse_req*) ; 
 size_t FUNC2 (struct fuse_req*,struct address_space*,struct iov_iter*,size_t) ; 
 struct fuse_req* FUNC3 (struct fuse_conn*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_conn*,struct fuse_req*) ; 
 size_t FUNC6 (struct fuse_req*,struct file*,struct inode*,size_t,size_t) ; 
 unsigned int FUNC7 (size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,size_t) ; 
 struct fuse_conn* FUNC9 (struct inode*) ; 
 scalar_t__ FUNC10 (struct iov_iter*) ; 
 scalar_t__ FUNC11 (struct inode*) ; 

__attribute__((used)) static ssize_t FUNC12(struct file *file,
				  struct address_space *mapping,
				  struct iov_iter *ii, loff_t pos)
{
	struct inode *inode = mapping->host;
	struct fuse_conn *fc = FUNC9(inode);
	int err = 0;
	ssize_t res = 0;

	if (FUNC11(inode))
		return -EIO;

	do {
		struct fuse_req *req;
		ssize_t count;
		unsigned nr_pages = FUNC7(pos, FUNC10(ii));

		req = FUNC3(fc, nr_pages);
		if (FUNC0(req)) {
			err = FUNC1(req);
			break;
		}

		count = FUNC2(req, mapping, ii, pos);
		if (count <= 0) {
			err = count;
		} else {
			size_t num_written;

			num_written = FUNC6(req, file, inode,
							    pos, count);
			err = req->out.h.error;
			if (!err) {
				res += num_written;
				pos += num_written;

				/* break out of the loop on short write */
				if (num_written != count)
					err = -EIO;
			}
		}
		FUNC5(fc, req);
	} while (!err && FUNC10(ii));

	if (res > 0)
		FUNC8(inode, pos);

	FUNC4(inode);

	return res > 0 ? res : err;
}