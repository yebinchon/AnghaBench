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
struct xdr_buf {unsigned int page_len; size_t len; struct page** pages; struct kvec* head; } ;
struct rpc_rqst {struct xdr_buf rq_rcv_buf; } ;
struct page {int dummy; } ;
struct kvec {size_t iov_len; scalar_t__ iov_base; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int errno_NFSERR_IO ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_buf*,size_t) ; 

__attribute__((used)) static int
FUNC4(struct rpc_rqst *req, __be32 *p, void *dummy)
{
	struct xdr_buf *rcvbuf = &req->rq_rcv_buf;
	struct kvec *iov = rcvbuf->head;
	struct page **page;
	size_t hdrlen;
	unsigned int pglen, recvd;
	int status;

	if ((status = FUNC2(*p++)))
		return FUNC1(status);

	hdrlen = (u8 *) p - (u8 *) iov->iov_base;
	if (iov->iov_len < hdrlen) {
		FUNC0("NFS: READDIR reply header overflowed:"
				"length %Zu > %Zu\n", hdrlen, iov->iov_len);
		return -errno_NFSERR_IO;
	} else if (iov->iov_len != hdrlen) {
		FUNC0("NFS: READDIR header is short. iovec will be shifted.\n");
		FUNC3(rcvbuf, iov->iov_len - hdrlen);
	}

	pglen = rcvbuf->page_len;
	recvd = rcvbuf->len - hdrlen;
	if (pglen > recvd)
		pglen = recvd;
	page = rcvbuf->pages;
	return pglen;
}