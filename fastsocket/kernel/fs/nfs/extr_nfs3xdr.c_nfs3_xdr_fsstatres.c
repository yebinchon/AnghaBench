
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int dummy; } ;
struct nfs_fsstat {int afiles; int ffiles; int tfiles; int abytes; int fbytes; int tbytes; int fattr; } ;
typedef int __be32 ;


 int nfs_stat_to_errno (int) ;
 int ntohl (int ) ;
 int * xdr_decode_hyper (int *,int *) ;
 int * xdr_decode_post_op_attr (int *,int ) ;

__attribute__((used)) static int
nfs3_xdr_fsstatres(struct rpc_rqst *req, __be32 *p, struct nfs_fsstat *res)
{
 int status;

 status = ntohl(*p++);

 p = xdr_decode_post_op_attr(p, res->fattr);
 if (status != 0)
  return nfs_stat_to_errno(status);

 p = xdr_decode_hyper(p, &res->tbytes);
 p = xdr_decode_hyper(p, &res->fbytes);
 p = xdr_decode_hyper(p, &res->abytes);
 p = xdr_decode_hyper(p, &res->tfiles);
 p = xdr_decode_hyper(p, &res->ffiles);
 p = xdr_decode_hyper(p, &res->afiles);


 return 0;
}
