
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* stmt_ann_t ;
struct TYPE_3__ {int modified; } ;


 int SSA_VAR_P (int ) ;
 int TV_TREE_OPS ;
 int build_ssa_operands (int ) ;
 int gcc_assert (int) ;
 TYPE_1__* get_stmt_ann (int ) ;
 int ssa_operands_active () ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;

void
update_stmt_operands (tree stmt)
{
  stmt_ann_t ann = get_stmt_ann (stmt);



  if (!ssa_operands_active ())
    return;



  gcc_assert (!SSA_VAR_P (stmt));

  gcc_assert (ann->modified);

  timevar_push (TV_TREE_OPS);

  build_ssa_operands (stmt);


  ann->modified = 0;

  timevar_pop (TV_TREE_OPS);
}
