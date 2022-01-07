
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_rqst {int rq_rcv_buf; int rq_svec; int rq_slen; TYPE_1__* rq_cred; } ;
struct rpc_auth {int au_rslack; } ;
struct nfs_readlinkargs {int pglen; int pgbase; int pages; int fh; } ;
typedef int __be32 ;
struct TYPE_2__ {struct rpc_auth* cr_auth; } ;


 int NFS_readlinkres_sz ;
 int RPC_REPHDRSIZE ;
 int xdr_adjust_iovec (int ,int *) ;
 int * xdr_encode_fhandle (int *,int ) ;
 int xdr_inline_pages (int *,unsigned int,int ,int ,int ) ;

__attribute__((used)) static int
nfs_xdr_readlinkargs(struct rpc_rqst *req, __be32 *p, struct nfs_readlinkargs *args)
{
 struct rpc_auth *auth = req->rq_cred->cr_auth;
 unsigned int replen;

 p = xdr_encode_fhandle(p, args->fh);
 req->rq_slen = xdr_adjust_iovec(req->rq_svec, p);


 replen = (RPC_REPHDRSIZE + auth->au_rslack + NFS_readlinkres_sz) << 2;
 xdr_inline_pages(&req->rq_rcv_buf, replen, args->pages, args->pgbase, args->pglen);
 return 0;
}
