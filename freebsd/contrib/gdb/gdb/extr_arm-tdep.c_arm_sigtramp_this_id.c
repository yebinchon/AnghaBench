
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;
struct arm_prologue_cache {int prev_sp; } ;


 void* arm_make_sigtramp_cache (struct frame_info*) ;
 struct frame_id frame_id_build (int ,int ) ;
 int frame_pc_unwind (struct frame_info*) ;

__attribute__((used)) static void
arm_sigtramp_this_id (struct frame_info *next_frame,
        void **this_cache,
        struct frame_id *this_id)
{
  struct arm_prologue_cache *cache;

  if (*this_cache == ((void*)0))
    *this_cache = arm_make_sigtramp_cache (next_frame);
  cache = *this_cache;



  *this_id = frame_id_build (cache->prev_sp, frame_pc_unwind (next_frame));
}
