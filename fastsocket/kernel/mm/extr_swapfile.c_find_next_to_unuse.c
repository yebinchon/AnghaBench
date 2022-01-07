
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {unsigned int max; unsigned char* swap_map; } ;


 scalar_t__ SWAP_MAP_BAD ;
 scalar_t__ swap_count (unsigned char) ;

__attribute__((used)) static unsigned int find_next_to_unuse(struct swap_info_struct *si,
     unsigned int prev)
{
 unsigned int max = si->max;
 unsigned int i = prev;
 unsigned char count;







 for (;;) {
  if (++i >= max) {
   if (!prev) {
    i = 0;
    break;
   }




   max = prev + 1;
   prev = 0;
   i = 1;
  }
  count = si->swap_map[i];
  if (count && swap_count(count) != SWAP_MAP_BAD)
   break;
 }
 return i;
}
