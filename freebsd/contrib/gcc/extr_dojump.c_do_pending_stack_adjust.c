
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GEN_INT (scalar_t__) ;
 int adjust_stack (int ) ;
 scalar_t__ inhibit_defer_pop ;
 scalar_t__ pending_stack_adjust ;

void
do_pending_stack_adjust (void)
{
  if (inhibit_defer_pop == 0)
    {
      if (pending_stack_adjust != 0)
        adjust_stack (GEN_INT (pending_stack_adjust));
      pending_stack_adjust = 0;
    }
}
