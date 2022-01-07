
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int POINTER_TYPE_P (int ) ;
 int TREE_CONSTANT_OVERFLOW (int ) ;
 scalar_t__ TREE_INT_CST_HIGH (int ) ;
 int TREE_INT_CST_LOW (int ) ;
 int TREE_OVERFLOW (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_UNSIGNED (int ) ;
 int build_int_cst_wide (int ,int ,scalar_t__) ;
 int force_fit_type (int ,int,int,int ) ;

__attribute__((used)) static tree
fold_convert_const_int_from_int (tree type, tree arg1)
{
  tree t;



  t = build_int_cst_wide (type, TREE_INT_CST_LOW (arg1),
     TREE_INT_CST_HIGH (arg1));

  t = force_fit_type (t,


        !POINTER_TYPE_P (TREE_TYPE (arg1)),
        (TREE_INT_CST_HIGH (arg1) < 0
         && (TYPE_UNSIGNED (type)
      < TYPE_UNSIGNED (TREE_TYPE (arg1))))
        | TREE_OVERFLOW (arg1),
        TREE_CONSTANT_OVERFLOW (arg1));

  return t;
}
