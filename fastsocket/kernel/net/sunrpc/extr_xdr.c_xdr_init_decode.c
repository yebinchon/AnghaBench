
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ iov_len; int * iov_base; } ;
struct xdr_stream {int * p; int nwords; int * end; TYPE_1__ scratch; struct xdr_buf* buf; } ;
struct xdr_buf {scalar_t__ page_len; int len; TYPE_2__* head; } ;
typedef int __be32 ;
struct TYPE_4__ {scalar_t__ iov_len; } ;


 int XDR_QUADLEN (int ) ;
 int xdr_set_iov (struct xdr_stream*,TYPE_2__*,int ) ;
 int xdr_set_page_base (struct xdr_stream*,int ,int ) ;

void xdr_init_decode(struct xdr_stream *xdr, struct xdr_buf *buf, __be32 *p)
{
 xdr->buf = buf;
 xdr->scratch.iov_base = ((void*)0);
 xdr->scratch.iov_len = 0;
 xdr->nwords = XDR_QUADLEN(buf->len);
 if (buf->head[0].iov_len != 0)
  xdr_set_iov(xdr, buf->head, buf->len);
 else if (buf->page_len != 0)
  xdr_set_page_base(xdr, 0, buf->len);
 if (p != ((void*)0) && p > xdr->p && xdr->end >= p) {
  xdr->nwords -= p - xdr->p;
  xdr->p = p;
 }
}
