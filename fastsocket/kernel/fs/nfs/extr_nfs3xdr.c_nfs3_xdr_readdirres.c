
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct xdr_buf {scalar_t__ page_len; scalar_t__ len; struct page** pages; struct kvec* head; } ;
struct rpc_rqst {struct xdr_buf rq_rcv_buf; } ;
struct page {int dummy; } ;
struct nfs3_readdirres {int * verf; int dir_attr; } ;
struct kvec {size_t iov_len; scalar_t__ iov_base; } ;
typedef int __be32 ;


 int dprintk (char*,...) ;
 int errno_NFSERR_IO ;
 int nfs_stat_to_errno (int) ;
 int ntohl (int ) ;
 int * xdr_decode_post_op_attr (int *,int ) ;
 int xdr_shift_buf (struct xdr_buf*,size_t) ;

__attribute__((used)) static int
nfs3_xdr_readdirres(struct rpc_rqst *req, __be32 *p, struct nfs3_readdirres *res)
{
 struct xdr_buf *rcvbuf = &req->rq_rcv_buf;
 struct kvec *iov = rcvbuf->head;
 struct page **page;
 size_t hdrlen;
 u32 recvd, pglen;
 int status;

 status = ntohl(*p++);

 p = xdr_decode_post_op_attr(p, res->dir_attr);
 if (status)
  return nfs_stat_to_errno(status);

 if (res->verf) {
  res->verf[0] = *p++;
  res->verf[1] = *p++;
 } else {
  p += 2;
 }

 hdrlen = (u8 *) p - (u8 *) iov->iov_base;
 if (iov->iov_len < hdrlen) {
  dprintk("NFS: READDIR reply header overflowed:"
    "length %Zu > %Zu\n", hdrlen, iov->iov_len);
  return -errno_NFSERR_IO;
 } else if (iov->iov_len != hdrlen) {
  dprintk("NFS: READDIR header is short. iovec will be shifted.\n");
  xdr_shift_buf(rcvbuf, iov->iov_len - hdrlen);
 }

 pglen = rcvbuf->page_len;
 recvd = rcvbuf->len - hdrlen;
 if (pglen > recvd)
  pglen = recvd;
 page = rcvbuf->pages;

 return pglen;
}
