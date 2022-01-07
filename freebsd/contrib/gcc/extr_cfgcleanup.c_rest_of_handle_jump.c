
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tail_call_emit; } ;


 TYPE_1__* cfun ;
 int delete_unreachable_blocks () ;
 int fixup_tail_calls () ;

__attribute__((used)) static unsigned int
rest_of_handle_jump (void)
{
  delete_unreachable_blocks ();

  if (cfun->tail_call_emit)
    fixup_tail_calls ();
  return 0;
}
