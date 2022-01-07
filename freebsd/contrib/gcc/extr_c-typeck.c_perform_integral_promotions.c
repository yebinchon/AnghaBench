
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int COMPONENT_REF ;
 scalar_t__ DECL_C_BIT_FIELD (int ) ;
 int DECL_SIZE (int ) ;
 int ENUMERAL_TYPE ;
 int INTEGRAL_TYPE_P (int ) ;
 int MAX (scalar_t__,scalar_t__) ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_PRECISION (int ) ;
 scalar_t__ TYPE_UNSIGNED (int ) ;
 int c_common_type_for_size (int ,int) ;
 scalar_t__ c_promoting_integer_type_p (int ) ;
 scalar_t__ compare_tree_int (int ,scalar_t__) ;
 int convert (int ,int ) ;
 int gcc_assert (int ) ;
 int integer_type_node ;
 int unsigned_type_node ;

tree
perform_integral_promotions (tree exp)
{
  tree type = TREE_TYPE (exp);
  enum tree_code code = TREE_CODE (type);

  gcc_assert (INTEGRAL_TYPE_P (type));



  if (code == ENUMERAL_TYPE)
    {
      type = c_common_type_for_size (MAX (TYPE_PRECISION (type),
       TYPE_PRECISION (integer_type_node)),
         ((TYPE_PRECISION (type)
           >= TYPE_PRECISION (integer_type_node))
          && TYPE_UNSIGNED (type)));

      return convert (type, exp);
    }



  if (TREE_CODE (exp) == COMPONENT_REF
      && DECL_C_BIT_FIELD (TREE_OPERAND (exp, 1))


      && 0 > compare_tree_int (DECL_SIZE (TREE_OPERAND (exp, 1)),
          TYPE_PRECISION (integer_type_node)))
    return convert (integer_type_node, exp);

  if (c_promoting_integer_type_p (type))
    {

      if (TYPE_UNSIGNED (type)
   && TYPE_PRECISION (type) == TYPE_PRECISION (integer_type_node))
 return convert (unsigned_type_node, exp);

      return convert (integer_type_node, exp);
    }

  return exp;
}
