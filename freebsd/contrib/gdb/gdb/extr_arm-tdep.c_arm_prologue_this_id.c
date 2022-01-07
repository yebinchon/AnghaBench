
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;
struct arm_prologue_cache {scalar_t__ prev_sp; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ LOWEST_PC ;
 scalar_t__ NORMAL_FRAME ;
 void* arm_make_prologue_cache (struct frame_info*) ;
 scalar_t__ frame_func_unwind (struct frame_info*) ;
 struct frame_id frame_id_build (scalar_t__,scalar_t__) ;
 scalar_t__ frame_id_eq (int ,struct frame_id) ;
 scalar_t__ frame_relative_level (struct frame_info*) ;
 int get_frame_id (struct frame_info*) ;
 scalar_t__ get_frame_type (struct frame_info*) ;

__attribute__((used)) static void
arm_prologue_this_id (struct frame_info *next_frame,
        void **this_cache,
        struct frame_id *this_id)
{
  struct arm_prologue_cache *cache;
  struct frame_id id;
  CORE_ADDR func;

  if (*this_cache == ((void*)0))
    *this_cache = arm_make_prologue_cache (next_frame);
  cache = *this_cache;

  func = frame_func_unwind (next_frame);



  if (func <= LOWEST_PC)
    return;


  if (cache->prev_sp == 0)
    return;

  id = frame_id_build (cache->prev_sp, func);




  if (frame_relative_level (next_frame) >= 0
      && get_frame_type (next_frame) == NORMAL_FRAME
      && frame_id_eq (get_frame_id (next_frame), id))
    return;

  *this_id = id;
}
