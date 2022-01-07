
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int next; } ;
typedef int CORE_ADDR ;


 int frame_func_unwind (int ) ;

CORE_ADDR
get_frame_func (struct frame_info *fi)
{
  return frame_func_unwind (fi->next);
}
