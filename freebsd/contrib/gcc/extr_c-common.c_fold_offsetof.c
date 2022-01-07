
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int convert (int ,int ) ;
 int fold_offsetof_1 (int ,int ) ;
 int size_type_node ;

tree
fold_offsetof (tree expr, tree stop_ref)
{

  return convert (size_type_node, fold_offsetof_1 (expr, stop_ref));
}
