#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfs_pageio_descriptor {struct nfs_direct_req* pg_dreq; } ;
struct nfs_direct_req {int /*<<< orphan*/  inode; } ;
struct iovec {size_t iov_len; } ;
typedef  scalar_t__ ssize_t ;
typedef  size_t loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* read_pageio_init ) (struct nfs_pageio_descriptor*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ EIO ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_direct_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_direct_req*) ; 
 int /*<<< orphan*/  nfs_direct_read_completion_ops ; 
 scalar_t__ FUNC3 (struct nfs_pageio_descriptor*,struct iovec const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_direct_req*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_pageio_descriptor*) ; 
 scalar_t__ FUNC6 (struct nfs_direct_req*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_pageio_descriptor*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC8(struct nfs_direct_req *dreq,
					      const struct iovec *iov,
					      unsigned long nr_segs,
					      loff_t pos)
{
	struct nfs_pageio_descriptor desc;
	ssize_t result = -EINVAL;
	size_t requested_bytes = 0;
	unsigned long seg;

	FUNC0(dreq->inode)->read_pageio_init(&desc, dreq->inode,
			     &nfs_direct_read_completion_ops);
	FUNC1(dreq);
	desc.pg_dreq = dreq;

	for (seg = 0; seg < nr_segs; seg++) {
		const struct iovec *vec = &iov[seg];
		result = FUNC3(&desc, vec, pos);
		if (result < 0)
			break;
		requested_bytes += result;
		if ((size_t)result < vec->iov_len)
			break;
		pos += vec->iov_len;
	}

	FUNC5(&desc);

	/*
	 * If no bytes were started, return the error, and let the
	 * generic layer handle the completion.
	 */
	if (requested_bytes == 0) {
		FUNC4(dreq);
		return result < 0 ? result : -EIO;
	}
	if (FUNC6(dreq))
		FUNC2(dreq);
	return 0;
}