
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEANUP_CROSSJUMP ;
 int CLEANUP_EXPENSIVE ;
 int CLEANUP_UPDATE_LIFE ;
 int cleanup_cfg (int) ;
 scalar_t__ flag_crossjumping ;
 scalar_t__ flag_if_conversion2 ;
 int if_convert (int) ;

__attribute__((used)) static unsigned int
rest_of_handle_if_after_reload (void)
{


  cleanup_cfg (CLEANUP_EXPENSIVE
               | CLEANUP_UPDATE_LIFE
               | (flag_crossjumping ? CLEANUP_CROSSJUMP : 0));
  if (flag_if_conversion2)
    if_convert (1);
  return 0;
}
