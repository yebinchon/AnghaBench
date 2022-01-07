
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 int ADDR_BITS_REMOVE (int ) ;
 int ARM_LR_REGNUM ;
 int read_register (int ) ;

__attribute__((used)) static CORE_ADDR
arm_saved_pc_after_call (struct frame_info *frame)
{
  return ADDR_BITS_REMOVE (read_register (ARM_LR_REGNUM));
}
