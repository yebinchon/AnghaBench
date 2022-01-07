
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int boolean_true_node ;
 int boolean_type_node ;
 int build2 (int,int ,int ,int ) ;

__attribute__((used)) static void
build_and_record_new_cond (enum tree_code new_code, tree op0, tree op1, tree *p)
{
  *p = build2 (new_code, boolean_type_node, op0, op1);
  p++;
  *p = boolean_true_node;
}
