
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;
typedef int CORE_ADDR ;


 int IA64_IP_REGNUM ;
 int IA64_PSR_REGNUM ;
 int SLOT_MULTIPLIER ;
 int read_register_pid (int ,int ) ;

__attribute__((used)) static CORE_ADDR
ia64_read_pc (ptid_t ptid)
{
  CORE_ADDR psr_value = read_register_pid (IA64_PSR_REGNUM, ptid);
  CORE_ADDR pc_value = read_register_pid (IA64_IP_REGNUM, ptid);
  int slot_num = (psr_value >> 41) & 3;

  return pc_value | (slot_num * SLOT_MULTIPLIER);
}
