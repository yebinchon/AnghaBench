
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parm_flag; } ;


 TYPE_1__* current_scope ;

void
declare_parm_level (void)
{
  current_scope->parm_flag = 1;
}
