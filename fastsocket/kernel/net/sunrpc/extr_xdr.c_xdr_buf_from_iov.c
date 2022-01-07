
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_buf {int len; int buflen; scalar_t__ page_len; int * tail; struct kvec* head; } ;
struct kvec {int iov_len; } ;


 int empty_iov ;

void
xdr_buf_from_iov(struct kvec *iov, struct xdr_buf *buf)
{
 buf->head[0] = *iov;
 buf->tail[0] = empty_iov;
 buf->page_len = 0;
 buf->buflen = buf->len = iov->iov_len;
}
