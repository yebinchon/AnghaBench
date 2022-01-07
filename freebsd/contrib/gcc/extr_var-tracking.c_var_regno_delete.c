
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__** regs; } ;
typedef TYPE_1__ dataflow_set ;
typedef TYPE_2__* attrs ;
struct TYPE_7__ {int offset; int decl; int loc; struct TYPE_7__* next; } ;


 int attrs_pool ;
 int delete_variable_part (TYPE_1__*,int ,int ,int ) ;
 int pool_free (int ,TYPE_2__*) ;

__attribute__((used)) static void
var_regno_delete (dataflow_set *set, int regno)
{
  attrs *reg = &set->regs[regno];
  attrs node, next;

  for (node = *reg; node; node = next)
    {
      next = node->next;
      delete_variable_part (set, node->loc, node->decl, node->offset);
      pool_free (attrs_pool, node);
    }
  *reg = ((void*)0);
}
