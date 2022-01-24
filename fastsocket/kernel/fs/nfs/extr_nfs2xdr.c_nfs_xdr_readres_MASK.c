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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_2__ {int len; struct kvec* head; } ;
struct rpc_rqst {TYPE_1__ rq_rcv_buf; } ;
struct nfs_readres {int count; scalar_t__ eof; int /*<<< orphan*/  fattr; } ;
struct kvec {size_t iov_len; scalar_t__ iov_base; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int errno_NFSERR_IO ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t) ; 

__attribute__((used)) static int
FUNC5(struct rpc_rqst *req, __be32 *p, struct nfs_readres *res)
{
	struct kvec *iov = req->rq_rcv_buf.head;
	size_t hdrlen;
	u32 count, recvd;
	int status;

	if ((status = FUNC2(*p++)))
		return FUNC1(status);
	p = FUNC3(p, res->fattr);

	count = FUNC2(*p++);
	res->eof = 0;
	hdrlen = (u8 *) p - (u8 *) iov->iov_base;
	if (iov->iov_len < hdrlen) {
		FUNC0("NFS: READ reply header overflowed:"
				"length %Zu > %Zu\n", hdrlen, iov->iov_len);
		return -errno_NFSERR_IO;
	} else if (iov->iov_len != hdrlen) {
		FUNC0("NFS: READ header is short. iovec will be shifted.\n");
		FUNC4(&req->rq_rcv_buf, iov->iov_len - hdrlen);
	}

	recvd = req->rq_rcv_buf.len - hdrlen;
	if (count > recvd) {
		FUNC0("NFS: server cheating in read reply: "
			"count %u > recvd %u\n", count, recvd);
		count = recvd;
	}

	FUNC0("RPC:      readres OK count %u\n", count);
	res->count = count;

	return count;
}