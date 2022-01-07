
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int * saved_regs; } ;
typedef int CORE_ADDR ;



CORE_ADDR *
deprecated_get_frame_saved_regs (struct frame_info *fi)
{
  return fi->saved_regs;
}
