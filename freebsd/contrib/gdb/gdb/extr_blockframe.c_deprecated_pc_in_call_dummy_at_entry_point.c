
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 scalar_t__ DECR_PC_AFTER_BREAK ;
 scalar_t__ entry_point_address () ;

int
deprecated_pc_in_call_dummy_at_entry_point (CORE_ADDR pc, CORE_ADDR sp,
         CORE_ADDR frame_address)
{
  CORE_ADDR addr = entry_point_address ();
  return ((pc) >= addr && (pc) <= (addr + DECR_PC_AFTER_BREAK));
}
