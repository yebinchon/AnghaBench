
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;


 int RETURN_MASK_ERROR ;
 scalar_t__ catch_exceptions (int ,int ,struct frame_info*,int *,int ) ;
 struct frame_info* create_sentinel_frame (int ) ;
 struct frame_info* current_frame ;
 int current_regcache ;
 int error (char*) ;
 int target_has_memory ;
 int target_has_registers ;
 int target_has_stack ;
 int uiout ;
 int unwind_to_current_frame ;

struct frame_info *
get_current_frame (void)
{





  if (!target_has_registers)
    error ("No registers.");
  if (!target_has_stack)
    error ("No stack.");
  if (!target_has_memory)
    error ("No memory.");
  if (current_frame == ((void*)0))
    {
      struct frame_info *sentinel_frame =
 create_sentinel_frame (current_regcache);
      if (catch_exceptions (uiout, unwind_to_current_frame, sentinel_frame,
       ((void*)0), RETURN_MASK_ERROR) != 0)
 {


   current_frame = sentinel_frame;
 }
    }
  return current_frame;
}
