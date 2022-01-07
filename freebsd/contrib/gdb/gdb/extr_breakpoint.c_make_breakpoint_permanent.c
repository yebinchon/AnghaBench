
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct breakpoint {TYPE_1__* loc; int enable_state; } ;
struct TYPE_2__ {int inserted; } ;


 int bp_permanent ;

void
make_breakpoint_permanent (struct breakpoint *b)
{
  b->enable_state = bp_permanent;


  b->loc->inserted = 1;
}
