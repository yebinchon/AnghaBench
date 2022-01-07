
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_locku_res {int stateid; int seqid; } ;


 int EIO ;
 int OP_LOCKU ;
 int decode_op_hdr (struct xdr_stream*,int ) ;
 int decode_stateid (struct xdr_stream*,int *) ;
 int nfs_increment_lock_seqid (int,int ) ;

__attribute__((used)) static int decode_locku(struct xdr_stream *xdr, struct nfs_locku_res *res)
{
 int status;

 status = decode_op_hdr(xdr, OP_LOCKU);
 if (status != -EIO)
  nfs_increment_lock_seqid(status, res->seqid);
 if (status == 0)
  status = decode_stateid(xdr, &res->stateid);
 return status;
}
