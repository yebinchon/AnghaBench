
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value_data {scalar_t__ max_value_regs; TYPE_1__* e; } ;
struct TYPE_2__ {int oldest_regno; int next_regno; int mode; } ;


 int FIRST_PSEUDO_REGISTER ;
 int INVALID_REGNUM ;
 int VOIDmode ;

__attribute__((used)) static void
init_value_data (struct value_data *vd)
{
  int i;
  for (i = 0; i < FIRST_PSEUDO_REGISTER; ++i)
    {
      vd->e[i].mode = VOIDmode;
      vd->e[i].oldest_regno = i;
      vd->e[i].next_regno = INVALID_REGNUM;
    }
  vd->max_value_regs = 0;
}
