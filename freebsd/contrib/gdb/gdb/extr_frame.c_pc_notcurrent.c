
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;


 scalar_t__ NORMAL_FRAME ;
 scalar_t__ get_frame_type (struct frame_info*) ;
 struct frame_info* get_next_frame (struct frame_info*) ;

__attribute__((used)) static int
pc_notcurrent (struct frame_info *frame)
{
  struct frame_info *next = get_next_frame (frame);
  int notcurrent = (next != ((void*)0) && get_frame_type (next) == NORMAL_FRAME);
  return notcurrent;
}
