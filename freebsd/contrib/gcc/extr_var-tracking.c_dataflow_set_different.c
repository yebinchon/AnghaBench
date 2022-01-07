
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vars; } ;
typedef TYPE_1__ dataflow_set ;


 int dataflow_set_different_1 ;
 int dataflow_set_different_2 ;
 int dataflow_set_different_value ;
 int htab_traverse (int ,int ,int ) ;

__attribute__((used)) static bool
dataflow_set_different (dataflow_set *old_set, dataflow_set *new_set)
{
  dataflow_set_different_value = 0;

  htab_traverse (old_set->vars, dataflow_set_different_1, new_set->vars);
  if (!dataflow_set_different_value)
    {



      htab_traverse (new_set->vars, dataflow_set_different_2, old_set->vars);
    }
  return dataflow_set_different_value;
}
