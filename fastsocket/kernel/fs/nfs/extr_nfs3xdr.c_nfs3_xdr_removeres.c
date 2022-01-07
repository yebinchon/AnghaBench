
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int dummy; } ;
struct nfs_removeres {int dir_attr; } ;
typedef int __be32 ;


 int nfs3_xdr_wccstat (struct rpc_rqst*,int *,int ) ;

__attribute__((used)) static int
nfs3_xdr_removeres(struct rpc_rqst *req, __be32 *p, struct nfs_removeres *res)
{
 return nfs3_xdr_wccstat(req, p, res->dir_attr);
}
