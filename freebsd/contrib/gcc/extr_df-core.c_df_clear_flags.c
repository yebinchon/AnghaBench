
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dataflow {int flags; TYPE_1__* problem; } ;
struct TYPE_2__ {int changeable_flags; } ;


 int gcc_assert (int) ;

int
df_clear_flags (struct dataflow *dflow, int mask)
{
  int old_flags = dflow->flags;

  gcc_assert (!(mask & (~dflow->problem->changeable_flags)));

  dflow->flags &= !mask;

  return old_flags;
}
