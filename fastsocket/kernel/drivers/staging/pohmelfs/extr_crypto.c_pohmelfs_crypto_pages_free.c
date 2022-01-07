
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_crypto_engine {unsigned int page_num; int * pages; } ;


 int __free_page (int ) ;
 int kfree (int *) ;

__attribute__((used)) static void pohmelfs_crypto_pages_free(struct pohmelfs_crypto_engine *e)
{
 unsigned int i;

 for (i=0; i<e->page_num; ++i)
  __free_page(e->pages[i]);
 kfree(e->pages);
}
