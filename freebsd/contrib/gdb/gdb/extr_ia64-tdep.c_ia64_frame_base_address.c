
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ia64_frame_cache {int base; } ;
struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 struct ia64_frame_cache* ia64_frame_cache (struct frame_info*,void**) ;

__attribute__((used)) static CORE_ADDR
ia64_frame_base_address (struct frame_info *next_frame, void **this_cache)
{
  struct ia64_frame_cache *cache =
    ia64_frame_cache (next_frame, this_cache);

  return cache->base;
}
