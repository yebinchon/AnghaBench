
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int dummy; } ;
struct nfs4_create_res {int dummy; } ;
typedef int __be32 ;


 int nfs4_xdr_dec_create (struct rpc_rqst*,int *,struct nfs4_create_res*) ;

__attribute__((used)) static int nfs4_xdr_dec_symlink(struct rpc_rqst *rqstp, __be32 *p, struct nfs4_create_res *res)
{
 return nfs4_xdr_dec_create(rqstp, p, res);
}
