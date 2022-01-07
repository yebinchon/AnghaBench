
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_buf {int flags; int head; int len; } ;
struct rpc_rqst {struct xdr_buf rq_snd_buf; } ;
struct nfs_writeargs {int pgbase; int pages; int fh; int count; int offset; } ;
typedef int __be32 ;


 int XDRBUF_WRITE ;
 void* htonl (int ) ;
 int xdr_adjust_iovec (int ,int *) ;
 int * xdr_encode_fhandle (int *,int ) ;
 int xdr_encode_pages (struct xdr_buf*,int ,int ,int ) ;

__attribute__((used)) static int
nfs_xdr_writeargs(struct rpc_rqst *req, __be32 *p, struct nfs_writeargs *args)
{
 struct xdr_buf *sndbuf = &req->rq_snd_buf;
 u32 offset = (u32)args->offset;
 u32 count = args->count;

 p = xdr_encode_fhandle(p, args->fh);
 *p++ = htonl(offset);
 *p++ = htonl(offset);
 *p++ = htonl(count);
 *p++ = htonl(count);
 sndbuf->len = xdr_adjust_iovec(sndbuf->head, p);


 xdr_encode_pages(sndbuf, args->pages, args->pgbase, count);
 sndbuf->flags |= XDRBUF_WRITE;
 return 0;
}
