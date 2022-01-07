
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {TYPE_1__* buf; int nwords; } ;
struct TYPE_2__ {int page_len; } ;


 scalar_t__ XDR_QUADLEN (int ) ;
 int xdr_read_pages (struct xdr_stream*,unsigned int) ;
 int xdr_set_page_base (struct xdr_stream*,int ,unsigned int) ;

void xdr_enter_page(struct xdr_stream *xdr, unsigned int len)
{
 xdr_read_pages(xdr, len);




 xdr_set_page_base(xdr, 0, len);
 xdr->nwords += XDR_QUADLEN(xdr->buf->page_len);
}
