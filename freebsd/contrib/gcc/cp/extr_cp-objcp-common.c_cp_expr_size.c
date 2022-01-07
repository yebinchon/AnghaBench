
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CLASSTYPE_SIZE_UNIT (int ) ;
 scalar_t__ CLASS_TYPE_P (int ) ;
 scalar_t__ CONSTRUCTOR ;
 scalar_t__ CP_AGGREGATE_TYPE_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_HAS_COMPLEX_ASSIGN_REF (int ) ;
 int TYPE_HAS_COMPLEX_INIT_REF (int ) ;
 int gcc_assert (int) ;
 scalar_t__ is_empty_class (int ) ;
 int lhd_expr_size (int ) ;
 int size_zero_node ;

tree
cp_expr_size (tree exp)
{
  tree type = TREE_TYPE (exp);

  if (CLASS_TYPE_P (type))
    {



      gcc_assert (!TYPE_HAS_COMPLEX_INIT_REF (type)
    || !TYPE_HAS_COMPLEX_ASSIGN_REF (type)

    || TREE_CODE (exp) == CONSTRUCTOR
    || CP_AGGREGATE_TYPE_P (type));



      return (is_empty_class (type)
       ? size_zero_node
       : CLASSTYPE_SIZE_UNIT (type));
    }
  else

    return lhd_expr_size (exp);
}
