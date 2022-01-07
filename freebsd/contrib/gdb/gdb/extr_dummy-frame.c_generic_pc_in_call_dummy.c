
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int pc_in_dummy_frame (int ) ;

int
generic_pc_in_call_dummy (CORE_ADDR pc, CORE_ADDR sp, CORE_ADDR fp)
{
  return pc_in_dummy_frame (pc);
}
