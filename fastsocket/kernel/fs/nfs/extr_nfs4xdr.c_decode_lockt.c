
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_lockt_res {int denied; } ;


 int NFS4ERR_DENIED ;
 int OP_LOCKT ;
 int decode_lock_denied (struct xdr_stream*,int ) ;
 int decode_op_hdr (struct xdr_stream*,int ) ;

__attribute__((used)) static int decode_lockt(struct xdr_stream *xdr, struct nfs_lockt_res *res)
{
 int status;
 status = decode_op_hdr(xdr, OP_LOCKT);
 if (status == -NFS4ERR_DENIED)
  return decode_lock_denied(xdr, res->denied);
 return status;
}
