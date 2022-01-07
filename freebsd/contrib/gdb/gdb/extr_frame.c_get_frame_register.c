
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int next; } ;


 int frame_unwind_register (int ,int,void*) ;

void
get_frame_register (struct frame_info *frame,
      int regnum, void *buf)
{
  frame_unwind_register (frame->next, regnum, buf);
}
