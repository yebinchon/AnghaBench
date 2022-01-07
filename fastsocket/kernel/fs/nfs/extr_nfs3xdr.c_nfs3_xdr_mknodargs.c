
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int rq_svec; int rq_slen; } ;
struct nfs3_mknodargs {scalar_t__ type; int rdev; int sattr; int len; int name; int fh; } ;
typedef int __be32 ;


 scalar_t__ MAJOR (int ) ;
 scalar_t__ MINOR (int ) ;
 scalar_t__ NF3BLK ;
 scalar_t__ NF3CHR ;
 void* htonl (scalar_t__) ;
 int xdr_adjust_iovec (int ,int *) ;
 int * xdr_encode_array (int *,int ,int ) ;
 int * xdr_encode_fhandle (int *,int ) ;
 int * xdr_encode_sattr (int *,int ) ;

__attribute__((used)) static int
nfs3_xdr_mknodargs(struct rpc_rqst *req, __be32 *p, struct nfs3_mknodargs *args)
{
 p = xdr_encode_fhandle(p, args->fh);
 p = xdr_encode_array(p, args->name, args->len);
 *p++ = htonl(args->type);
 p = xdr_encode_sattr(p, args->sattr);
 if (args->type == NF3CHR || args->type == NF3BLK) {
  *p++ = htonl(MAJOR(args->rdev));
  *p++ = htonl(MINOR(args->rdev));
 }

 req->rq_slen = xdr_adjust_iovec(req->rq_svec, p);
 return 0;
}
