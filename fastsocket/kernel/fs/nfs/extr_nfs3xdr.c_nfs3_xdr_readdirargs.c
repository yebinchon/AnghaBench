
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rpc_rqst {int rq_rcv_buf; int rq_svec; int rq_slen; TYPE_1__* rq_cred; } ;
struct rpc_auth {int au_rslack; } ;
struct nfs3_readdirargs {int count; int pages; scalar_t__ plus; int * verf; int cookie; int fh; } ;
typedef int __be32 ;
struct TYPE_2__ {struct rpc_auth* cr_auth; } ;


 int NFS3_readdirres_sz ;
 int RPC_REPHDRSIZE ;
 void* htonl (int) ;
 int xdr_adjust_iovec (int ,int *) ;
 int * xdr_encode_fhandle (int *,int ) ;
 int * xdr_encode_hyper (int *,int ) ;
 int xdr_inline_pages (int *,unsigned int,int ,int ,int) ;

__attribute__((used)) static int
nfs3_xdr_readdirargs(struct rpc_rqst *req, __be32 *p, struct nfs3_readdirargs *args)
{
 struct rpc_auth *auth = req->rq_cred->cr_auth;
 unsigned int replen;
 u32 count = args->count;

 p = xdr_encode_fhandle(p, args->fh);
 p = xdr_encode_hyper(p, args->cookie);
 *p++ = args->verf[0];
 *p++ = args->verf[1];
 if (args->plus) {


  *p++ = htonl(count >> 3);
 }
 *p++ = htonl(count);
 req->rq_slen = xdr_adjust_iovec(req->rq_svec, p);


 replen = (RPC_REPHDRSIZE + auth->au_rslack + NFS3_readdirres_sz) << 2;
 xdr_inline_pages(&req->rq_rcv_buf, replen, args->pages, 0, count);
 return 0;
}
