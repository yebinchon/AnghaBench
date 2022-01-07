
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i386_frame_cache {scalar_t__ base; int pc; } ;
struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;


 struct frame_id frame_id_build (scalar_t__,int ) ;
 struct i386_frame_cache* i386_frame_cache (struct frame_info*,void**) ;

__attribute__((used)) static void
i386_frame_this_id (struct frame_info *next_frame, void **this_cache,
      struct frame_id *this_id)
{
  struct i386_frame_cache *cache = i386_frame_cache (next_frame, this_cache);


  if (cache->base == 0)
    return;


  (*this_id) = frame_id_build (cache->base + 8, cache->pc);
}
