
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;
struct alpha_heuristic_unwind_cache {int start_pc; int vfp; } ;


 struct alpha_heuristic_unwind_cache* alpha_heuristic_frame_unwind_cache (struct frame_info*,void**,int ) ;
 struct frame_id frame_id_build (int ,int ) ;

__attribute__((used)) static void
alpha_heuristic_frame_this_id (struct frame_info *next_frame,
     void **this_prologue_cache,
     struct frame_id *this_id)
{
  struct alpha_heuristic_unwind_cache *info
    = alpha_heuristic_frame_unwind_cache (next_frame, this_prologue_cache, 0);

  *this_id = frame_id_build (info->vfp, info->start_pc);
}
