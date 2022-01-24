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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct xdr_buf {size_t page_len; size_t len; struct kvec* head; } ;
struct rpc_rqst {struct xdr_buf rq_rcv_buf; } ;
struct nfs_fattr {int dummy; } ;
struct kvec {size_t iov_len; scalar_t__ iov_base; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int ENAMETOOLONG ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int errno_NFSERR_IO ; 
 int FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_buf*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct xdr_buf*,size_t) ; 

__attribute__((used)) static int
FUNC6(struct rpc_rqst *req, __be32 *p, struct nfs_fattr *fattr)
{
	struct xdr_buf *rcvbuf = &req->rq_rcv_buf;
	struct kvec *iov = rcvbuf->head;
	size_t hdrlen;
	u32 len, recvd;
	int	status;

	status = FUNC2(*p++);
	p = FUNC3(p, fattr);

	if (status != 0)
		return FUNC1(status);

	/* Convert length of symlink */
	len = FUNC2(*p++);
	if (len >= rcvbuf->page_len) {
		FUNC0("nfs: server returned giant symlink!\n");
		return -ENAMETOOLONG;
	}

	hdrlen = (u8 *) p - (u8 *) iov->iov_base;
	if (iov->iov_len < hdrlen) {
		FUNC0("NFS: READLINK reply header overflowed:"
				"length %Zu > %Zu\n", hdrlen, iov->iov_len);
		return -errno_NFSERR_IO;
	} else if (iov->iov_len != hdrlen) {
		FUNC0("NFS: READLINK header is short. "
			"iovec will be shifted.\n");
		FUNC4(rcvbuf, iov->iov_len - hdrlen);
	}
	recvd = req->rq_rcv_buf.len - hdrlen;
	if (recvd < len) {
		FUNC0("NFS: server cheating in readlink reply: "
				"count %u > recvd %u\n", len, recvd);
		return -EIO;
	}

	FUNC5(rcvbuf, len);
	return 0;
}