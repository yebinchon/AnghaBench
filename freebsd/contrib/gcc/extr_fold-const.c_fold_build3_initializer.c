
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int END_FOLD_INIT ;
 int START_FOLD_INIT ;
 int fold_build3 (int,int ,int ,int ,int ) ;

tree
fold_build3_initializer (enum tree_code code, tree type, tree op0, tree op1,
    tree op2)
{
  tree result;
  START_FOLD_INIT;

  result = fold_build3 (code, type, op0, op1, op2);

  END_FOLD_INIT;
  return result;
}
