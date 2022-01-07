
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;
struct dwarf2_frame_cache {int cfa; } ;


 struct dwarf2_frame_cache* dwarf2_frame_cache (struct frame_info*,void**) ;
 int frame_func_unwind (struct frame_info*) ;
 struct frame_id frame_id_build (int ,int ) ;

__attribute__((used)) static void
dwarf2_frame_this_id (struct frame_info *next_frame, void **this_cache,
        struct frame_id *this_id)
{
  struct dwarf2_frame_cache *cache =
    dwarf2_frame_cache (next_frame, this_cache);

  (*this_id) = frame_id_build (cache->cfa, frame_func_unwind (next_frame));
}
