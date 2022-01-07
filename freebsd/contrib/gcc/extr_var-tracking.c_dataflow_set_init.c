
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ stack_adjust; int vars; int regs; } ;
typedef TYPE_1__ dataflow_set ;


 int htab_create (int,int ,int ,int ) ;
 int init_attrs_list_set (int ) ;
 int variable_htab_eq ;
 int variable_htab_free ;
 int variable_htab_hash ;

__attribute__((used)) static void
dataflow_set_init (dataflow_set *set, int vars_size)
{
  init_attrs_list_set (set->regs);
  set->vars = htab_create (vars_size, variable_htab_hash, variable_htab_eq,
      variable_htab_free);
  set->stack_adjust = 0;
}
