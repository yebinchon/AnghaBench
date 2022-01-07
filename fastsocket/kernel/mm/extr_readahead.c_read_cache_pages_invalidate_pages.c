
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; } ;
struct list_head {int dummy; } ;
struct address_space {int dummy; } ;


 int list_del (int *) ;
 int list_empty (struct list_head*) ;
 struct page* list_to_page (struct list_head*) ;
 int read_cache_pages_invalidate_page (struct address_space*,struct page*) ;

__attribute__((used)) static void read_cache_pages_invalidate_pages(struct address_space *mapping,
           struct list_head *pages)
{
 struct page *victim;

 while (!list_empty(pages)) {
  victim = list_to_page(pages);
  list_del(&victim->lru);
  read_cache_pages_invalidate_page(mapping, victim);
 }
}
