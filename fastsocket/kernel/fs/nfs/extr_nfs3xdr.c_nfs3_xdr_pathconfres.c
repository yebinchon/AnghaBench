
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int dummy; } ;
struct nfs_pathconf {void* max_namelen; void* max_link; int fattr; } ;
typedef int __be32 ;


 int nfs_stat_to_errno (int) ;
 void* ntohl (int ) ;
 int * xdr_decode_post_op_attr (int *,int ) ;

__attribute__((used)) static int
nfs3_xdr_pathconfres(struct rpc_rqst *req, __be32 *p, struct nfs_pathconf *res)
{
 int status;

 status = ntohl(*p++);

 p = xdr_decode_post_op_attr(p, res->fattr);
 if (status != 0)
  return nfs_stat_to_errno(status);
 res->max_link = ntohl(*p++);
 res->max_namelen = ntohl(*p++);


 return 0;
}
