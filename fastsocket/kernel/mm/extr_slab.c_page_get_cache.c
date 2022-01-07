
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ next; } ;
struct page {TYPE_1__ lru; } ;
struct kmem_cache {int dummy; } ;


 int BUG_ON (int) ;
 int PageSlab (struct page*) ;
 struct page* compound_head (struct page*) ;

__attribute__((used)) static inline struct kmem_cache *page_get_cache(struct page *page)
{
 page = compound_head(page);
 BUG_ON(!PageSlab(page));
 return (struct kmem_cache *)page->lru.next;
}
