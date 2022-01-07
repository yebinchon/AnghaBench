
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int dummy; } ;
struct nfs3_diropres {int dir_attr; int fattr; int fh; } ;
typedef int __be32 ;


 int errno_NFSERR_IO ;
 int nfs_stat_to_errno (int) ;
 int ntohl (int ) ;
 int * xdr_decode_fhandle (int *,int ) ;
 int * xdr_decode_post_op_attr (int *,int ) ;

__attribute__((used)) static int
nfs3_xdr_lookupres(struct rpc_rqst *req, __be32 *p, struct nfs3_diropres *res)
{
 int status;

 if ((status = ntohl(*p++))) {
  status = nfs_stat_to_errno(status);
 } else {
  if (!(p = xdr_decode_fhandle(p, res->fh)))
   return -errno_NFSERR_IO;
  p = xdr_decode_post_op_attr(p, res->fattr);
 }
 xdr_decode_post_op_attr(p, res->dir_attr);
 return status;
}
