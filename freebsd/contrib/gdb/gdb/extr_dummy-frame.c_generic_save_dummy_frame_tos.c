
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int top; } ;
typedef int CORE_ADDR ;


 TYPE_1__* dummy_frame_stack ;

void
generic_save_dummy_frame_tos (CORE_ADDR sp)
{
  dummy_frame_stack->top = sp;
}
