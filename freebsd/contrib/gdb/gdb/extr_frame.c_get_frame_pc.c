
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int * next; } ;
typedef int CORE_ADDR ;


 int frame_pc_unwind (int *) ;
 int gdb_assert (int ) ;

CORE_ADDR
get_frame_pc (struct frame_info *frame)
{
  gdb_assert (frame->next != ((void*)0));
  return frame_pc_unwind (frame->next);
}
