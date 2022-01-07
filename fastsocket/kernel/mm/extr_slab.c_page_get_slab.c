
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slab {int dummy; } ;
struct TYPE_2__ {scalar_t__ prev; } ;
struct page {TYPE_1__ lru; } ;


 int BUG_ON (int) ;
 int PageSlab (struct page*) ;

__attribute__((used)) static inline struct slab *page_get_slab(struct page *page)
{
 BUG_ON(!PageSlab(page));
 return (struct slab *)page->lru.prev;
}
