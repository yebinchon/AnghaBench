
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 scalar_t__ INNER_THAN (scalar_t__,scalar_t__) ;

int
deprecated_pc_in_call_dummy_on_stack (CORE_ADDR pc, CORE_ADDR sp,
          CORE_ADDR frame_address)
{
  return (INNER_THAN ((sp), (pc))
   && (frame_address != 0)
   && INNER_THAN ((pc), (frame_address)));
}
