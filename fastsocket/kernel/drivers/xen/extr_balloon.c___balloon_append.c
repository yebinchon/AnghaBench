
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int lru; } ;
struct TYPE_2__ {int balloon_low; int balloon_high; } ;


 scalar_t__ PageHighMem (struct page*) ;
 TYPE_1__ balloon_stats ;
 int ballooned_pages ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void __balloon_append(struct page *page)
{

 if (PageHighMem(page)) {
  list_add_tail(&page->lru, &ballooned_pages);
  balloon_stats.balloon_high++;
 } else {
  list_add(&page->lru, &ballooned_pages);
  balloon_stats.balloon_low++;
 }
}
