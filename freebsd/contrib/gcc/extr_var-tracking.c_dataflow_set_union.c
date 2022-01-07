
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vars; int * regs; } ;
typedef TYPE_1__ dataflow_set ;


 int FIRST_PSEUDO_REGISTER ;
 int attrs_list_union (int *,int ) ;
 int htab_traverse (int ,int ,TYPE_1__*) ;
 int variable_union ;

__attribute__((used)) static void
dataflow_set_union (dataflow_set *dst, dataflow_set *src)
{
  int i;

  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    attrs_list_union (&dst->regs[i], src->regs[i]);

  htab_traverse (src->vars, variable_union, dst);
}
