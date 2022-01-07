
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct list_head* next; } ;
struct page {TYPE_1__ lru; } ;
struct list_head {int dummy; } ;
struct kmem_cache {int dummy; } ;



__attribute__((used)) static inline void page_set_cache(struct page *page, struct kmem_cache *cache)
{
 page->lru.next = (struct list_head *)cache;
}
