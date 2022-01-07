
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dst_crypto_engine {int page_num; int * pages; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __free_page (int ) ;
 int alloc_page (int ) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;

__attribute__((used)) static int dst_crypto_pages_alloc(struct dst_crypto_engine *e, int num)
{
 int i;

 e->pages = kmalloc(num * sizeof(struct page **), GFP_KERNEL);
 if (!e->pages)
  return -ENOMEM;

 for (i=0; i<num; ++i) {
  e->pages[i] = alloc_page(GFP_KERNEL);
  if (!e->pages[i])
   goto err_out_free_pages;
 }

 e->page_num = num;
 return 0;

err_out_free_pages:
 while (--i >= 0)
  __free_page(e->pages[i]);

 kfree(e->pages);
 return -ENOMEM;
}
