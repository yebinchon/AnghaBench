
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;


 struct frame_info* get_selected_frame () ;
 int target_has_memory ;
 int target_has_registers ;
 int target_has_stack ;

struct frame_info *
deprecated_safe_get_selected_frame (void)
{
  if (!target_has_registers || !target_has_stack || !target_has_memory)
    return ((void*)0);
  return get_selected_frame ();
}
