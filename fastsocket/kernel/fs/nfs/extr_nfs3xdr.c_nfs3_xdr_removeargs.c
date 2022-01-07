
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_rqst {int rq_svec; int rq_slen; } ;
struct TYPE_2__ {int len; int name; } ;
struct nfs_removeargs {TYPE_1__ name; int fh; } ;
typedef int __be32 ;


 int xdr_adjust_iovec (int ,int *) ;
 int * xdr_encode_array (int *,int ,int ) ;
 int * xdr_encode_fhandle (int *,int ) ;

__attribute__((used)) static int
nfs3_xdr_removeargs(struct rpc_rqst *req, __be32 *p, const struct nfs_removeargs *args)
{
 p = xdr_encode_fhandle(p, args->fh);
 p = xdr_encode_array(p, args->name.name, args->name.len);
 req->rq_slen = xdr_adjust_iovec(req->rq_svec, p);
 return 0;
}
