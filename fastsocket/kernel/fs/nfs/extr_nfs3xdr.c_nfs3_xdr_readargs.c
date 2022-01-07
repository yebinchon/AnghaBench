
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int flags; } ;
struct rpc_rqst {TYPE_2__ rq_rcv_buf; int rq_svec; int rq_slen; TYPE_1__* rq_cred; } ;
struct rpc_auth {int au_rslack; } ;
struct nfs_readargs {int pgbase; int pages; int offset; int fh; int count; } ;
typedef int __be32 ;
struct TYPE_3__ {struct rpc_auth* cr_auth; } ;


 int NFS3_readres_sz ;
 int RPC_REPHDRSIZE ;
 int XDRBUF_READ ;
 int htonl (int ) ;
 int xdr_adjust_iovec (int ,int *) ;
 int * xdr_encode_fhandle (int *,int ) ;
 int * xdr_encode_hyper (int *,int ) ;
 int xdr_inline_pages (TYPE_2__*,unsigned int,int ,int ,int ) ;

__attribute__((used)) static int
nfs3_xdr_readargs(struct rpc_rqst *req, __be32 *p, struct nfs_readargs *args)
{
 struct rpc_auth *auth = req->rq_cred->cr_auth;
 unsigned int replen;
 u32 count = args->count;

 p = xdr_encode_fhandle(p, args->fh);
 p = xdr_encode_hyper(p, args->offset);
 *p++ = htonl(count);
 req->rq_slen = xdr_adjust_iovec(req->rq_svec, p);


 replen = (RPC_REPHDRSIZE + auth->au_rslack + NFS3_readres_sz) << 2;
 xdr_inline_pages(&req->rq_rcv_buf, replen,
    args->pages, args->pgbase, count);
 req->rq_rcv_buf.flags |= XDRBUF_READ;
 return 0;
}
