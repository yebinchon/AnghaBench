
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_2__* histogram_value ;
typedef int block_stmt_iterator ;
struct TYPE_4__ {int value; } ;
struct TYPE_5__ {TYPE_1__ hvalue; } ;


 int NULL_TREE ;
 int fold_convert (int ,int ) ;
 int force_gimple_operand_bsi (int *,int ,int,int ) ;
 int gcov_type_node ;

__attribute__((used)) static tree
prepare_instrumented_value (block_stmt_iterator *bsi,
       histogram_value value)
{
  tree val = value->hvalue.value;
  return force_gimple_operand_bsi (bsi, fold_convert (gcov_type_node, val),
       1, NULL_TREE);
}
