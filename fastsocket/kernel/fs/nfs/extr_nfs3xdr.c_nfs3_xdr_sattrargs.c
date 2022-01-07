
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int rq_svec; int rq_slen; } ;
struct nfs3_sattrargs {int guardtime; scalar_t__ guard; int sattr; int fh; } ;
typedef int __be32 ;


 int htonl (scalar_t__) ;
 int xdr_adjust_iovec (int ,int *) ;
 int * xdr_encode_fhandle (int *,int ) ;
 int * xdr_encode_sattr (int *,int ) ;
 int * xdr_encode_time3 (int *,int *) ;

__attribute__((used)) static int
nfs3_xdr_sattrargs(struct rpc_rqst *req, __be32 *p, struct nfs3_sattrargs *args)
{
 p = xdr_encode_fhandle(p, args->fh);
 p = xdr_encode_sattr(p, args->sattr);
 *p++ = htonl(args->guard);
 if (args->guard)
  p = xdr_encode_time3(p, &args->guardtime);
 req->rq_slen = xdr_adjust_iovec(req->rq_svec, p);
 return 0;
}
