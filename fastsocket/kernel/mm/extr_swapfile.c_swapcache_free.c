
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_info_struct {int dummy; } ;
struct page {int dummy; } ;


 int SWAP_HAS_CACHE ;
 int mem_cgroup_uncharge_swapcache (struct page*,int ,int) ;
 int spin_unlock (int *) ;
 unsigned char swap_entry_free (struct swap_info_struct*,int ,int ) ;
 struct swap_info_struct* swap_info_get (int ) ;
 int swap_lock ;

void swapcache_free(swp_entry_t entry, struct page *page)
{
 struct swap_info_struct *p;
 unsigned char count;

 p = swap_info_get(entry);
 if (p) {
  count = swap_entry_free(p, entry, SWAP_HAS_CACHE);
  if (page)
   mem_cgroup_uncharge_swapcache(page, entry, count != 0);
  spin_unlock(&swap_lock);
 }
}
