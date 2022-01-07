
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int END_FOLD_INIT ;
 int START_FOLD_INIT ;
 int fold_build1 (int,int ,int ) ;

tree
fold_build1_initializer (enum tree_code code, tree type, tree op)
{
  tree result;
  START_FOLD_INIT;

  result = fold_build1 (code, type, op);

  END_FOLD_INIT;
  return result;
}
