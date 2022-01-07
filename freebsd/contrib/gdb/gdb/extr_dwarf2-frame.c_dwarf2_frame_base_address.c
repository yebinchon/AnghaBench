
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct dwarf2_frame_cache {int cfa; } ;
typedef int CORE_ADDR ;


 struct dwarf2_frame_cache* dwarf2_frame_cache (struct frame_info*,void**) ;

__attribute__((used)) static CORE_ADDR
dwarf2_frame_base_address (struct frame_info *next_frame, void **this_cache)
{
  struct dwarf2_frame_cache *cache =
    dwarf2_frame_cache (next_frame, this_cache);

  return cache->cfa;
}
