
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int * iov; int * end; int * p; int * page_ptr; TYPE_1__* buf; } ;
typedef int __be32 ;
struct TYPE_2__ {unsigned int page_len; int * pages; scalar_t__ page_base; } ;


 int EINVAL ;
 unsigned int PAGE_MASK ;
 unsigned int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 void* page_address (int ) ;

__attribute__((used)) static int xdr_set_page_base(struct xdr_stream *xdr,
  unsigned int base, unsigned int len)
{
 unsigned int pgnr;
 unsigned int maxlen;
 unsigned int pgoff;
 unsigned int pgend;
 void *kaddr;

 maxlen = xdr->buf->page_len;
 if (base >= maxlen)
  return -EINVAL;
 maxlen -= base;
 if (len > maxlen)
  len = maxlen;

 base += xdr->buf->page_base;

 pgnr = base >> PAGE_SHIFT;
 xdr->page_ptr = &xdr->buf->pages[pgnr];
 kaddr = page_address(*xdr->page_ptr);

 pgoff = base & ~PAGE_MASK;
 xdr->p = (__be32*)(kaddr + pgoff);

 pgend = pgoff + len;
 if (pgend > PAGE_SIZE)
  pgend = PAGE_SIZE;
 xdr->end = (__be32*)(kaddr + pgend);
 xdr->iov = ((void*)0);
 return 0;
}
