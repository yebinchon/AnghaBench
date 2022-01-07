
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct splice_pipe_desc {size_t nr_pages; TYPE_1__* partial; struct page** pages; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_2__ {unsigned int len; unsigned int offset; } ;


 size_t PIPE_BUFFERS ;
 int get_page (struct page*) ;
 struct page* linear_to_page (struct page*,unsigned int*,unsigned int*,struct sk_buff*,struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int spd_fill_page(struct splice_pipe_desc *spd, struct page *page,
    unsigned int *len, unsigned int offset,
    struct sk_buff *skb, int linear,
    struct sock *sk)
{
 if (unlikely(spd->nr_pages == PIPE_BUFFERS))
  return 1;

 if (linear) {
  page = linear_to_page(page, len, &offset, skb, sk);
  if (!page)
   return 1;
 } else
  get_page(page);

 spd->pages[spd->nr_pages] = page;
 spd->partial[spd->nr_pages].len = *len;
 spd->partial[spd->nr_pages].offset = offset;
 spd->nr_pages++;

 return 0;
}
