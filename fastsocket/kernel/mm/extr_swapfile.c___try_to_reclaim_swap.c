
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct swap_info_struct {int type; } ;
struct page {int dummy; } ;


 struct page* find_get_page (int *,int ) ;
 int page_cache_release (struct page*) ;
 int swapper_space ;
 TYPE_1__ swp_entry (int ,unsigned long) ;
 int try_to_free_swap (struct page*) ;
 scalar_t__ trylock_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int
__try_to_reclaim_swap(struct swap_info_struct *si, unsigned long offset)
{
 swp_entry_t entry = swp_entry(si->type, offset);
 struct page *page;
 int ret = 0;

 page = find_get_page(&swapper_space, entry.val);
 if (!page)
  return 0;







 if (trylock_page(page)) {
  ret = try_to_free_swap(page);
  unlock_page(page);
 }
 page_cache_release(page);
 return ret;
}
