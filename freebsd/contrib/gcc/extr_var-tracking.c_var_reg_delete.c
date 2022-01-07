
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tree ;
typedef int rtx ;
struct TYPE_7__ {TYPE_2__** regs; } ;
typedef TYPE_1__ dataflow_set ;
typedef TYPE_2__* attrs ;
struct TYPE_8__ {int offset; int decl; int loc; struct TYPE_8__* next; } ;
typedef int HOST_WIDE_INT ;


 size_t REGNO (int ) ;
 int REG_EXPR (int ) ;
 int REG_OFFSET (int ) ;
 int attrs_pool ;
 int clobber_variable_part (TYPE_1__*,int *,int ,int ) ;
 int delete_variable_part (TYPE_1__*,int ,int ,int ) ;
 int pool_free (int ,TYPE_2__*) ;
 int var_debug_decl (int ) ;

__attribute__((used)) static void
var_reg_delete (dataflow_set *set, rtx loc, bool clobber)
{
  attrs *reg = &set->regs[REGNO (loc)];
  attrs node, next;

  if (clobber)
    {
      tree decl = REG_EXPR (loc);
      HOST_WIDE_INT offset = REG_OFFSET (loc);

      decl = var_debug_decl (decl);

      clobber_variable_part (set, ((void*)0), decl, offset);
    }

  for (node = *reg; node; node = next)
    {
      next = node->next;
      delete_variable_part (set, node->loc, node->decl, node->offset);
      pool_free (attrs_pool, node);
    }
  *reg = ((void*)0);
}
