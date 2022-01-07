
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int rq_svec; int rq_slen; } ;
struct nfs3_createargs {scalar_t__ createmode; int sattr; int * verifier; int len; int name; int fh; } ;
typedef int __be32 ;


 scalar_t__ NFS3_CREATE_EXCLUSIVE ;
 int htonl (scalar_t__) ;
 int xdr_adjust_iovec (int ,int *) ;
 int * xdr_encode_array (int *,int ,int ) ;
 int * xdr_encode_fhandle (int *,int ) ;
 int * xdr_encode_sattr (int *,int ) ;

__attribute__((used)) static int
nfs3_xdr_createargs(struct rpc_rqst *req, __be32 *p, struct nfs3_createargs *args)
{
 p = xdr_encode_fhandle(p, args->fh);
 p = xdr_encode_array(p, args->name, args->len);

 *p++ = htonl(args->createmode);
 if (args->createmode == NFS3_CREATE_EXCLUSIVE) {
  *p++ = args->verifier[0];
  *p++ = args->verifier[1];
 } else
  p = xdr_encode_sattr(p, args->sattr);

 req->rq_slen = xdr_adjust_iovec(req->rq_svec, p);
 return 0;
}
