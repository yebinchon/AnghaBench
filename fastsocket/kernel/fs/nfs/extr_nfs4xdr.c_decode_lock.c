
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_lock_res {int lock_seqid; int * open_seqid; int stateid; } ;


 int EIO ;
 int NFS4ERR_DENIED ;
 int OP_LOCK ;
 int decode_lock_denied (struct xdr_stream*,int *) ;
 int decode_op_hdr (struct xdr_stream*,int ) ;
 int decode_stateid (struct xdr_stream*,int *) ;
 int nfs_increment_lock_seqid (int,int ) ;
 int nfs_increment_open_seqid (int,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int decode_lock(struct xdr_stream *xdr, struct nfs_lock_res *res)
{
 int status;

 status = decode_op_hdr(xdr, OP_LOCK);
 if (status == -EIO)
  goto out;
 if (status == 0) {
  status = decode_stateid(xdr, &res->stateid);
  if (unlikely(status))
   goto out;
 } else if (status == -NFS4ERR_DENIED)
  status = decode_lock_denied(xdr, ((void*)0));
 if (res->open_seqid != ((void*)0))
  nfs_increment_open_seqid(status, res->open_seqid);
 nfs_increment_lock_seqid(status, res->lock_seqid);
out:
 return status;
}
