
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_open_confirmres {int stateid; int seqid; } ;


 int EIO ;
 int OP_OPEN_CONFIRM ;
 int decode_op_hdr (struct xdr_stream*,int ) ;
 int decode_stateid (struct xdr_stream*,int *) ;
 int nfs_increment_open_seqid (int,int ) ;

__attribute__((used)) static int decode_open_confirm(struct xdr_stream *xdr, struct nfs_open_confirmres *res)
{
 int status;

 status = decode_op_hdr(xdr, OP_OPEN_CONFIRM);
 if (status != -EIO)
  nfs_increment_open_seqid(status, res->seqid);
 if (!status)
  status = decode_stateid(xdr, &res->stateid);
 return status;
}
