
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* stmt_ann_t ;
typedef int * basic_block ;
struct TYPE_3__ {int * bb; } ;


 int * PHI_BB (int ) ;
 scalar_t__ PHI_NODE ;
 scalar_t__ TREE_CODE (int ) ;
 TYPE_1__* stmt_ann (int ) ;

__attribute__((used)) static inline basic_block
bb_for_stmt (tree t)
{
  stmt_ann_t ann;

  if (TREE_CODE (t) == PHI_NODE)
    return PHI_BB (t);

  ann = stmt_ann (t);
  return ann ? ann->bb : ((void*)0);
}
