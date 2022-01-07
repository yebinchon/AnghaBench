
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int TREE_TYPE (int ) ;
 int complete_type (int ) ;
 int fold_if_not_in_template (int ) ;
 int pointer_int_sum (int,int ,int ) ;

__attribute__((used)) static tree
cp_pointer_int_sum (enum tree_code resultcode, tree ptrop, tree intop)
{
  tree res_type = TREE_TYPE (ptrop);






  complete_type (TREE_TYPE (res_type));

  return pointer_int_sum (resultcode, ptrop,
     fold_if_not_in_template (intop));
}
