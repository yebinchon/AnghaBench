
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;
struct frame_info {int dummy; } ;


 struct frame_info* current_frame ;
 struct frame_info* get_prev_frame (void*) ;

__attribute__((used)) static int
unwind_to_current_frame (struct ui_out *ui_out, void *args)
{
  struct frame_info *frame = get_prev_frame (args);


  if (frame == ((void*)0))
    return 1;
  current_frame = frame;
  return 0;
}
