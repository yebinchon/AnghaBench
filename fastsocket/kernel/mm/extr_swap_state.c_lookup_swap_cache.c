
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct page {int dummy; } ;


 int INC_CACHE_INFO (int ) ;
 struct page* find_get_page (int *,int ) ;
 int find_success ;
 int find_total ;
 int swapper_space ;

struct page * lookup_swap_cache(swp_entry_t entry)
{
 struct page *page;

 page = find_get_page(&swapper_space, entry.val);

 if (page)
  INC_CACHE_INFO(find_success);

 INC_CACHE_INFO(find_total);
 return page;
}
