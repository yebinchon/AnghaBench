
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* call_hi; void* call_lo; } ;
typedef void* CORE_ADDR ;


 TYPE_1__* dummy_frame_stack ;

void
generic_save_call_dummy_addr (CORE_ADDR lo, CORE_ADDR hi)
{
  dummy_frame_stack->call_lo = lo;
  dummy_frame_stack->call_hi = hi;
}
