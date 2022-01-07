
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stack_adjust; int vars; int * regs; } ;
typedef TYPE_1__ dataflow_set ;


 int FIRST_PSEUDO_REGISTER ;
 int attrs_list_copy (int *,int ) ;
 int vars_copy (int ,int ) ;

__attribute__((used)) static void
dataflow_set_copy (dataflow_set *dst, dataflow_set *src)
{
  int i;

  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    attrs_list_copy (&dst->regs[i], src->regs[i]);

  vars_copy (dst->vars, src->vars);
  dst->stack_adjust = src->stack_adjust;
}
