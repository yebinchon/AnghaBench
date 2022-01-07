
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
struct nfs_readargs {int pgbase; int pages; int fh; int count; int offset; } ;
typedef int __be32 ;
struct TYPE_3__ {struct rpc_auth* cr_auth; } ;


 int NFS_readres_sz ;
 int RPC_REPHDRSIZE ;
 int XDRBUF_READ ;
 void* htonl (int ) ;
 int xdr_adjust_iovec (int ,int *) ;
 int * xdr_encode_fhandle (int *,int ) ;
 int xdr_inline_pages (TYPE_2__*,unsigned int,int ,int ,int ) ;

__attribute__((used)) static int
nfs_xdr_readargs(struct rpc_rqst *req, __be32 *p, struct nfs_readargs *args)
{
 struct rpc_auth *auth = req->rq_cred->cr_auth;
 unsigned int replen;
 u32 offset = (u32)args->offset;
 u32 count = args->count;

 p = xdr_encode_fhandle(p, args->fh);
 *p++ = htonl(offset);
 *p++ = htonl(count);
 *p++ = htonl(count);
 req->rq_slen = xdr_adjust_iovec(req->rq_svec, p);


 replen = (RPC_REPHDRSIZE + auth->au_rslack + NFS_readres_sz) << 2;
 xdr_inline_pages(&req->rq_rcv_buf, replen,
    args->pages, args->pgbase, count);
 req->rq_rcv_buf.flags |= XDRBUF_READ;
 return 0;
}
