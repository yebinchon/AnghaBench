
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int next; } ;
typedef int CORE_ADDR ;


 int frame_unwind_address_in_block (int ) ;

CORE_ADDR
get_frame_address_in_block (struct frame_info *this_frame)
{
  return frame_unwind_address_in_block (this_frame->next);
}
