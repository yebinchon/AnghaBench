
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int dummy; } ;
struct nfs_diropok {int fattr; int fh; } ;
typedef int __be32 ;


 int nfs_stat_to_errno (int) ;
 int ntohl (int ) ;
 int xdr_decode_fattr (int *,int ) ;
 int * xdr_decode_fhandle (int *,int ) ;

__attribute__((used)) static int
nfs_xdr_diropres(struct rpc_rqst *req, __be32 *p, struct nfs_diropok *res)
{
 int status;

 if ((status = ntohl(*p++)))
  return nfs_stat_to_errno(status);
 p = xdr_decode_fhandle(p, res->fh);
 xdr_decode_fattr(p, res->fattr);
 return 0;
}
