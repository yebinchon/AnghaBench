
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int * p; int * end; struct kvec* iov; struct xdr_buf* buf; } ;
struct xdr_buf {int buflen; int page_len; size_t len; TYPE_1__* tail; struct kvec* head; } ;
struct kvec {int iov_len; scalar_t__ iov_base; } ;
typedef int __be32 ;
struct TYPE_2__ {int iov_len; } ;


 int BUG_ON (int) ;

void xdr_init_encode(struct xdr_stream *xdr, struct xdr_buf *buf, __be32 *p)
{
 struct kvec *iov = buf->head;
 int scratch_len = buf->buflen - buf->page_len - buf->tail[0].iov_len;

 BUG_ON(scratch_len < 0);
 xdr->buf = buf;
 xdr->iov = iov;
 xdr->p = (__be32 *)((char *)iov->iov_base + iov->iov_len);
 xdr->end = (__be32 *)((char *)iov->iov_base + scratch_len);
 BUG_ON(iov->iov_len > scratch_len);

 if (p != xdr->p && p != ((void*)0)) {
  size_t len;

  BUG_ON(p < xdr->p || p > xdr->end);
  len = (char *)p - (char *)xdr->p;
  xdr->p = p;
  buf->len += len;
  iov->iov_len += len;
 }
}
