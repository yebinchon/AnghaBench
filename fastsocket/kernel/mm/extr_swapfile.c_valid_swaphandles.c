
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_info_struct {int max; int * swap_map; } ;
typedef int pgoff_t ;


 scalar_t__ SWAP_MAP_BAD ;
 int page_cluster ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ swap_count (int ) ;
 struct swap_info_struct** swap_info ;
 int swap_lock ;
 int swp_offset (int ) ;
 size_t swp_type (int ) ;

int valid_swaphandles(swp_entry_t entry, unsigned long *offset)
{
 struct swap_info_struct *si;
 int our_page_cluster = page_cluster;
 pgoff_t target, toff;
 pgoff_t base, end;
 int nr_pages = 0;

 if (!our_page_cluster)
  return 0;

 si = swap_info[swp_type(entry)];
 target = swp_offset(entry);
 base = (target >> our_page_cluster) << our_page_cluster;
 end = base + (1 << our_page_cluster);
 if (!base)
  base++;

 spin_lock(&swap_lock);
 if (end > si->max)
  end = si->max;


 for (toff = target; ++toff < end; nr_pages++) {

  if (!si->swap_map[toff])
   break;
  if (swap_count(si->swap_map[toff]) == SWAP_MAP_BAD)
   break;
 }

 for (toff = target; --toff >= base; nr_pages++) {

  if (!si->swap_map[toff])
   break;
  if (swap_count(si->swap_map[toff]) == SWAP_MAP_BAD)
   break;
 }
 spin_unlock(&swap_lock);





 *offset = ++toff;
 return nr_pages? ++nr_pages: 0;
}
