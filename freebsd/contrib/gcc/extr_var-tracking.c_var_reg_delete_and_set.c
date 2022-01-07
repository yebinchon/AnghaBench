
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int rtx ;
struct TYPE_8__ {TYPE_2__** regs; } ;
typedef TYPE_1__ dataflow_set ;
typedef TYPE_2__* attrs ;
struct TYPE_9__ {scalar_t__ decl; scalar_t__ offset; struct TYPE_9__* next; int loc; } ;
typedef scalar_t__ HOST_WIDE_INT ;


 size_t REGNO (int ) ;
 scalar_t__ REG_EXPR (int ) ;
 scalar_t__ REG_OFFSET (int ) ;
 int attrs_pool ;
 int clobber_variable_part (TYPE_1__*,int ,scalar_t__,scalar_t__) ;
 int delete_variable_part (TYPE_1__*,int ,scalar_t__,scalar_t__) ;
 int pool_free (int ,TYPE_2__*) ;
 scalar_t__ var_debug_decl (scalar_t__) ;
 int var_reg_set (TYPE_1__*,int ) ;

__attribute__((used)) static void
var_reg_delete_and_set (dataflow_set *set, rtx loc, bool modify)
{
  tree decl = REG_EXPR (loc);
  HOST_WIDE_INT offset = REG_OFFSET (loc);
  attrs node, next;
  attrs *nextp;

  decl = var_debug_decl (decl);

  nextp = &set->regs[REGNO (loc)];
  for (node = *nextp; node; node = next)
    {
      next = node->next;
      if (node->decl != decl || node->offset != offset)
 {
   delete_variable_part (set, node->loc, node->decl, node->offset);
   pool_free (attrs_pool, node);
   *nextp = next;
 }
      else
 {
   node->loc = loc;
   nextp = &node->next;
 }
    }
  if (modify)
    clobber_variable_part (set, loc, decl, offset);
  var_reg_set (set, loc);
}
