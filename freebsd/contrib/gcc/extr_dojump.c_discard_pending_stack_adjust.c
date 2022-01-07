
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pending_stack_adjust ;
 int stack_pointer_delta ;

void
discard_pending_stack_adjust (void)
{
  stack_pointer_delta -= pending_stack_adjust;
  pending_stack_adjust = 0;
}
