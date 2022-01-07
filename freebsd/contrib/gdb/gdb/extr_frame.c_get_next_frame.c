
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {scalar_t__ level; struct frame_info* next; } ;



struct frame_info *
get_next_frame (struct frame_info *this_frame)
{
  if (this_frame->level > 0)
    return this_frame->next;
  else
    return ((void*)0);
}
