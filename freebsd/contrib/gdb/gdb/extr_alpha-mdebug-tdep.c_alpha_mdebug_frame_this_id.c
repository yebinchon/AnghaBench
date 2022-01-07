
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;
struct alpha_mdebug_unwind_cache {int vfp; } ;


 struct alpha_mdebug_unwind_cache* alpha_mdebug_frame_unwind_cache (struct frame_info*,void**) ;
 int frame_func_unwind (struct frame_info*) ;
 struct frame_id frame_id_build (int ,int ) ;

__attribute__((used)) static void
alpha_mdebug_frame_this_id (struct frame_info *next_frame,
       void **this_prologue_cache,
       struct frame_id *this_id)
{
  struct alpha_mdebug_unwind_cache *info
    = alpha_mdebug_frame_unwind_cache (next_frame, this_prologue_cache);

  *this_id = frame_id_build (info->vfp, frame_func_unwind (next_frame));
}
