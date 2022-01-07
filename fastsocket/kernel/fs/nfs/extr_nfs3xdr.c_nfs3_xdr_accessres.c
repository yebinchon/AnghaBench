
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int dummy; } ;
struct nfs3_accessres {void* access; int fattr; } ;
typedef int __be32 ;


 int nfs_stat_to_errno (int) ;
 void* ntohl (int ) ;
 int * xdr_decode_post_op_attr (int *,int ) ;

__attribute__((used)) static int
nfs3_xdr_accessres(struct rpc_rqst *req, __be32 *p, struct nfs3_accessres *res)
{
 int status = ntohl(*p++);

 p = xdr_decode_post_op_attr(p, res->fattr);
 if (status)
  return nfs_stat_to_errno(status);
 res->access = ntohl(*p++);
 return 0;
}
