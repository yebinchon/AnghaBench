
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slab {int dummy; } ;
struct TYPE_2__ {struct list_head* prev; } ;
struct page {TYPE_1__ lru; } ;
struct list_head {int dummy; } ;



__attribute__((used)) static inline void page_set_slab(struct page *page, struct slab *slab)
{
 page->lru.prev = (struct list_head *)slab;
}
