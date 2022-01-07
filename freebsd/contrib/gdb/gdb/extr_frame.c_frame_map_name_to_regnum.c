
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;


 int get_frame_arch (struct frame_info*) ;
 int user_reg_map_name_to_regnum (int ,char const*,int) ;

int
frame_map_name_to_regnum (struct frame_info *frame, const char *name, int len)
{
  return user_reg_map_name_to_regnum (get_frame_arch (frame), name, len);
}
