
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;


 int get_frame_arch (struct frame_info*) ;
 char const* user_reg_map_regnum_to_name (int ,int) ;

const char *
frame_map_regnum_to_name (struct frame_info *frame, int regnum)
{
  return user_reg_map_regnum_to_name (get_frame_arch (frame), regnum);
}
