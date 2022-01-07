
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int rq_svec; int rq_slen; } ;
struct nfs_fh {int dummy; } ;
typedef int __be32 ;


 int xdr_adjust_iovec (int ,int *) ;
 int * xdr_encode_fhandle (int *,struct nfs_fh*) ;

__attribute__((used)) static int
nfs_xdr_fhandle(struct rpc_rqst *req, __be32 *p, struct nfs_fh *fh)
{
 p = xdr_encode_fhandle(p, fh);
 req->rq_slen = xdr_adjust_iovec(req->rq_svec, p);
 return 0;
}
