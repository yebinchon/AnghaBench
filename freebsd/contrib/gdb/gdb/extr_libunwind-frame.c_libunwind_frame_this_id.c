
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libunwind_frame_cache {int func_addr; int base; } ;
struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;


 struct frame_id frame_id_build (int ,int ) ;
 struct libunwind_frame_cache* libunwind_frame_cache (struct frame_info*,void**) ;

void
libunwind_frame_this_id (struct frame_info *next_frame, void **this_cache,
        struct frame_id *this_id)
{
  struct libunwind_frame_cache *cache =
    libunwind_frame_cache (next_frame, this_cache);

  (*this_id) = frame_id_build (cache->base, cache->func_addr);
}
