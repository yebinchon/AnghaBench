
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int next; } ;
typedef int CORE_ADDR ;


 int frame_sp_unwind (int ) ;

CORE_ADDR
get_frame_sp (struct frame_info *this_frame)
{
  return frame_sp_unwind (this_frame->next);
}
