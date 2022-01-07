
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int rq_svec; int rq_slen; } ;
struct nfs3_accessargs {int access; int fh; } ;
typedef int __be32 ;


 int htonl (int ) ;
 int xdr_adjust_iovec (int ,int *) ;
 int * xdr_encode_fhandle (int *,int ) ;

__attribute__((used)) static int
nfs3_xdr_accessargs(struct rpc_rqst *req, __be32 *p, struct nfs3_accessargs *args)
{
 p = xdr_encode_fhandle(p, args->fh);
 *p++ = htonl(args->access);
 req->rq_slen = xdr_adjust_iovec(req->rq_svec, p);
 return 0;
}
