
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;
typedef int CORE_ADDR ;


 int ARM_PC_REGNUM ;
 int ARM_PS_REGNUM ;
 scalar_t__ arm_apcs_32 ;
 scalar_t__ arm_pc_is_thumb (int) ;
 int read_register_pid (int ,int ) ;
 int write_register_pid (int ,int,int ) ;

__attribute__((used)) static void
arm_write_pc (CORE_ADDR pc, ptid_t ptid)
{
  write_register_pid (ARM_PC_REGNUM, pc, ptid);


  if (arm_apcs_32)
    {
      CORE_ADDR val = read_register_pid (ARM_PS_REGNUM, ptid);
      if (arm_pc_is_thumb (pc))
 write_register_pid (ARM_PS_REGNUM, val | 0x20, ptid);
      else
 write_register_pid (ARM_PS_REGNUM, val & ~(CORE_ADDR) 0x20, ptid);
    }
}
