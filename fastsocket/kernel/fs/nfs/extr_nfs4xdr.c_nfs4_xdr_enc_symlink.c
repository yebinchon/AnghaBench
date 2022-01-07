
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int dummy; } ;
struct nfs4_create_arg {int dummy; } ;
typedef int __be32 ;


 int nfs4_xdr_enc_create (struct rpc_rqst*,int *,struct nfs4_create_arg const*) ;

__attribute__((used)) static int nfs4_xdr_enc_symlink(struct rpc_rqst *req, __be32 *p, const struct nfs4_create_arg *args)
{
 return nfs4_xdr_enc_create(req, p, args);
}
