
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {unsigned int page_ptr; TYPE_1__* buf; } ;
struct TYPE_2__ {unsigned int pages; int len; int tail; scalar_t__ page_base; } ;


 unsigned int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int xdr_set_iov (struct xdr_stream*,int ,int ) ;
 scalar_t__ xdr_set_page_base (struct xdr_stream*,unsigned int,int ) ;

__attribute__((used)) static void xdr_set_next_page(struct xdr_stream *xdr)
{
 unsigned int newbase;

 newbase = (1 + xdr->page_ptr - xdr->buf->pages) << PAGE_SHIFT;
 newbase -= xdr->buf->page_base;

 if (xdr_set_page_base(xdr, newbase, PAGE_SIZE) < 0)
  xdr_set_iov(xdr, xdr->buf->tail, xdr->buf->len);
}
