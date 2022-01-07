
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct alpha_heuristic_unwind_cache {int vfp; } ;
typedef int CORE_ADDR ;


 struct alpha_heuristic_unwind_cache* alpha_heuristic_frame_unwind_cache (struct frame_info*,void**,int ) ;

__attribute__((used)) static CORE_ADDR
alpha_heuristic_frame_base_address (struct frame_info *next_frame,
        void **this_prologue_cache)
{
  struct alpha_heuristic_unwind_cache *info
    = alpha_heuristic_frame_unwind_cache (next_frame, this_prologue_cache, 0);

  return info->vfp;
}
