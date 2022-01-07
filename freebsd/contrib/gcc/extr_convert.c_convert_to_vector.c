
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;



 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_SIZE (int ) ;

 int VIEW_CONVERT_EXPR ;
 int build1 (int ,int ,int ) ;
 int error (char*) ;
 int error_mark_node ;
 int tree_int_cst_equal (int ,int ) ;

tree
convert_to_vector (tree type, tree expr)
{
  switch (TREE_CODE (TREE_TYPE (expr)))
    {
    case 129:
    case 128:
      if (!tree_int_cst_equal (TYPE_SIZE (type), TYPE_SIZE (TREE_TYPE (expr))))
 {
   error ("can't convert between vector values of different size");
   return error_mark_node;
 }
      return build1 (VIEW_CONVERT_EXPR, type, expr);

    default:
      error ("can't convert value to a vector");
      return error_mark_node;
    }
}
