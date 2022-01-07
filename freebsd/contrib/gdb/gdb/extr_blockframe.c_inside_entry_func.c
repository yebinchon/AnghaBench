
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;


 scalar_t__ entry_point_address () ;
 scalar_t__ get_frame_func (struct frame_info*) ;

int
inside_entry_func (struct frame_info *this_frame)
{
  return (get_frame_func (this_frame) == entry_point_address ());
}
