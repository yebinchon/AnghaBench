
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct xdr_buf {size_t page_len; size_t len; struct kvec* head; } ;
struct rpc_rqst {struct xdr_buf rq_rcv_buf; } ;
struct nfs_fattr {int dummy; } ;
struct kvec {size_t iov_len; scalar_t__ iov_base; } ;
typedef int __be32 ;


 int EIO ;
 int ENAMETOOLONG ;
 int dprintk (char*,...) ;
 int errno_NFSERR_IO ;
 int nfs_stat_to_errno (int) ;
 void* ntohl (int ) ;
 int * xdr_decode_post_op_attr (int *,struct nfs_fattr*) ;
 int xdr_shift_buf (struct xdr_buf*,size_t) ;
 int xdr_terminate_string (struct xdr_buf*,size_t) ;

__attribute__((used)) static int
nfs3_xdr_readlinkres(struct rpc_rqst *req, __be32 *p, struct nfs_fattr *fattr)
{
 struct xdr_buf *rcvbuf = &req->rq_rcv_buf;
 struct kvec *iov = rcvbuf->head;
 size_t hdrlen;
 u32 len, recvd;
 int status;

 status = ntohl(*p++);
 p = xdr_decode_post_op_attr(p, fattr);

 if (status != 0)
  return nfs_stat_to_errno(status);


 len = ntohl(*p++);
 if (len >= rcvbuf->page_len) {
  dprintk("nfs: server returned giant symlink!\n");
  return -ENAMETOOLONG;
 }

 hdrlen = (u8 *) p - (u8 *) iov->iov_base;
 if (iov->iov_len < hdrlen) {
  dprintk("NFS: READLINK reply header overflowed:"
    "length %Zu > %Zu\n", hdrlen, iov->iov_len);
  return -errno_NFSERR_IO;
 } else if (iov->iov_len != hdrlen) {
  dprintk("NFS: READLINK header is short. "
   "iovec will be shifted.\n");
  xdr_shift_buf(rcvbuf, iov->iov_len - hdrlen);
 }
 recvd = req->rq_rcv_buf.len - hdrlen;
 if (recvd < len) {
  dprintk("NFS: server cheating in readlink reply: "
    "count %u > recvd %u\n", len, recvd);
  return -EIO;
 }

 xdr_terminate_string(rcvbuf, len);
 return 0;
}
