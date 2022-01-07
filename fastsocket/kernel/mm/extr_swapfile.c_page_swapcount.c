
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct swap_info_struct {int * swap_map; } ;
struct page {int dummy; } ;


 int page_private (struct page*) ;
 int spin_unlock (int *) ;
 int swap_count (int ) ;
 struct swap_info_struct* swap_info_get (TYPE_1__) ;
 int swap_lock ;
 size_t swp_offset (TYPE_1__) ;

__attribute__((used)) static inline int page_swapcount(struct page *page)
{
 int count = 0;
 struct swap_info_struct *p;
 swp_entry_t entry;

 entry.val = page_private(page);
 p = swap_info_get(entry);
 if (p) {
  count = swap_count(p->swap_map[swp_offset(entry)]);
  spin_unlock(&swap_lock);
 }
 return count;
}
