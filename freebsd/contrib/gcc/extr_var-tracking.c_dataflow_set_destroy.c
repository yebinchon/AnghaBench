
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * vars; int * regs; } ;
typedef TYPE_1__ dataflow_set ;


 int FIRST_PSEUDO_REGISTER ;
 int attrs_list_clear (int *) ;
 int htab_delete (int *) ;

__attribute__((used)) static void
dataflow_set_destroy (dataflow_set *set)
{
  int i;

  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    attrs_list_clear (&set->regs[i]);

  htab_delete (set->vars);
  set->vars = ((void*)0);
}
