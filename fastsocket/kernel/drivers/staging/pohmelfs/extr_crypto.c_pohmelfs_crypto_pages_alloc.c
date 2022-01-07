
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_sb {int trans_max_pages; } ;
struct pohmelfs_crypto_engine {unsigned int page_num; int * pages; } ;
struct page {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int alloc_page (int ) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;

__attribute__((used)) static int pohmelfs_crypto_pages_alloc(struct pohmelfs_crypto_engine *e, struct pohmelfs_sb *psb)
{
 unsigned int i;

 e->pages = kmalloc(psb->trans_max_pages * sizeof(struct page *), GFP_KERNEL);
 if (!e->pages)
  return -ENOMEM;

 for (i=0; i<psb->trans_max_pages; ++i) {
  e->pages[i] = alloc_page(GFP_KERNEL);
  if (!e->pages[i])
   break;
 }

 e->page_num = i;
 if (!e->page_num)
  goto err_out_free;

 return 0;

err_out_free:
 kfree(e->pages);
 return -ENOMEM;
}
