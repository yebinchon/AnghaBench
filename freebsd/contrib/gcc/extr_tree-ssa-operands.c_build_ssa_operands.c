
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* stmt_ann_t ;
struct TYPE_3__ {int has_volatile_ops; int * addresses_taken; } ;


 int build_v_may_defs ;
 int build_v_must_defs ;
 int build_vuses ;
 int finalize_ssa_stmt_operands (int ) ;
 TYPE_1__* get_stmt_ann (int ) ;
 int operand_build_sort_virtual (int ) ;
 int parse_ssa_operands (int ) ;
 int start_ssa_stmt_operands () ;

__attribute__((used)) static void
build_ssa_operands (tree stmt)
{
  stmt_ann_t ann = get_stmt_ann (stmt);



  if (ann)
    {
      ann->has_volatile_ops = 0;
      if (ann->addresses_taken)
 ann->addresses_taken = ((void*)0);
    }

  start_ssa_stmt_operands ();

  parse_ssa_operands (stmt);
  operand_build_sort_virtual (build_vuses);
  operand_build_sort_virtual (build_v_may_defs);
  operand_build_sort_virtual (build_v_must_defs);

  finalize_ssa_stmt_operands (stmt);
}
