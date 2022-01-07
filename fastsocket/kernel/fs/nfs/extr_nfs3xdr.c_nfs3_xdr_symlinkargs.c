
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int rq_snd_buf; int rq_svec; int rq_slen; } ;
struct nfs3_symlinkargs {int pathlen; int pages; int sattr; int fromlen; int fromname; int fromfh; } ;
typedef int __be32 ;


 int htonl (int ) ;
 int xdr_adjust_iovec (int ,int *) ;
 int * xdr_encode_array (int *,int ,int ) ;
 int * xdr_encode_fhandle (int *,int ) ;
 int xdr_encode_pages (int *,int ,int ,int ) ;
 int * xdr_encode_sattr (int *,int ) ;

__attribute__((used)) static int
nfs3_xdr_symlinkargs(struct rpc_rqst *req, __be32 *p, struct nfs3_symlinkargs *args)
{
 p = xdr_encode_fhandle(p, args->fromfh);
 p = xdr_encode_array(p, args->fromname, args->fromlen);
 p = xdr_encode_sattr(p, args->sattr);
 *p++ = htonl(args->pathlen);
 req->rq_slen = xdr_adjust_iovec(req->rq_svec, p);


 xdr_encode_pages(&req->rq_snd_buf, args->pages, 0, args->pathlen);
 return 0;
}
