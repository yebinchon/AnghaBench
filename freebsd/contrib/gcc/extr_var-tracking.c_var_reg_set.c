
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int rtx ;
struct TYPE_6__ {TYPE_2__** regs; } ;
typedef TYPE_1__ dataflow_set ;
typedef TYPE_2__* attrs ;
struct TYPE_7__ {scalar_t__ decl; scalar_t__ offset; struct TYPE_7__* next; } ;
typedef scalar_t__ HOST_WIDE_INT ;


 size_t REGNO (int ) ;
 scalar_t__ REG_EXPR (int ) ;
 scalar_t__ REG_OFFSET (int ) ;
 int attrs_list_insert (TYPE_2__**,scalar_t__,scalar_t__,int ) ;
 int set_variable_part (TYPE_1__*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ var_debug_decl (scalar_t__) ;

__attribute__((used)) static void
var_reg_set (dataflow_set *set, rtx loc)
{
  tree decl = REG_EXPR (loc);
  HOST_WIDE_INT offset = REG_OFFSET (loc);
  attrs node;

  decl = var_debug_decl (decl);

  for (node = set->regs[REGNO (loc)]; node; node = node->next)
    if (node->decl == decl && node->offset == offset)
      break;
  if (!node)
    attrs_list_insert (&set->regs[REGNO (loc)], decl, offset, loc);
  set_variable_part (set, loc, decl, offset);
}
