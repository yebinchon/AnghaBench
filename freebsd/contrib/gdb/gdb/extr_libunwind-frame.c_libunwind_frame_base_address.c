
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libunwind_frame_cache {int base; } ;
struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 struct libunwind_frame_cache* libunwind_frame_cache (struct frame_info*,void**) ;

CORE_ADDR
libunwind_frame_base_address (struct frame_info *next_frame, void **this_cache)
{
  struct libunwind_frame_cache *cache =
    libunwind_frame_cache (next_frame, this_cache);

  return cache->base;
}
