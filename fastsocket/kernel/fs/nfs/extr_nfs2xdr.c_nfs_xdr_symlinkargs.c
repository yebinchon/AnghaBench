
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_buf {size_t len; TYPE_1__* tail; TYPE_1__* head; } ;
struct rpc_rqst {struct xdr_buf rq_snd_buf; } ;
struct nfs_symlinkargs {int sattr; int pathlen; int pages; int fromlen; int fromname; int fromfh; } ;
typedef int __be32 ;
struct TYPE_2__ {size_t iov_len; } ;


 int htonl (int ) ;
 size_t xdr_adjust_iovec (TYPE_1__*,int *) ;
 int * xdr_encode_array (int *,int ,int ) ;
 int * xdr_encode_fhandle (int *,int ) ;
 int xdr_encode_pages (struct xdr_buf*,int ,int ,int ) ;
 int * xdr_encode_sattr (int *,int ) ;

__attribute__((used)) static int
nfs_xdr_symlinkargs(struct rpc_rqst *req, __be32 *p, struct nfs_symlinkargs *args)
{
 struct xdr_buf *sndbuf = &req->rq_snd_buf;
 size_t pad;

 p = xdr_encode_fhandle(p, args->fromfh);
 p = xdr_encode_array(p, args->fromname, args->fromlen);
 *p++ = htonl(args->pathlen);
 sndbuf->len = xdr_adjust_iovec(sndbuf->head, p);

 xdr_encode_pages(sndbuf, args->pages, 0, args->pathlen);






 pad = sndbuf->tail->iov_len;
 if (pad > 0)
  p++;
 p = xdr_encode_sattr(p, args->sattr);
 sndbuf->len += xdr_adjust_iovec(sndbuf->tail, p) - pad;
 return 0;
}
