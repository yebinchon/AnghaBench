
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_2__ {scalar_t__ (* merge_type_attributes ) (scalar_t__,scalar_t__) ;} ;


 scalar_t__ ARITHMETIC_TYPE_P (scalar_t__) ;
 int COMPLEX_TYPE ;
 scalar_t__ ENUMERAL_TYPE ;
 int REAL_TYPE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_IS_SIZETYPE (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ TYPE_PRECISION (scalar_t__) ;
 scalar_t__ TYPE_UNSIGNED (scalar_t__) ;
 scalar_t__ VECTOR_TYPE ;
 scalar_t__ build_complex_type (scalar_t__) ;
 scalar_t__ build_type_attribute_variant (scalar_t__,scalar_t__) ;
 scalar_t__ double_type_node ;
 scalar_t__ float_type_node ;
 int gcc_assert (int) ;
 scalar_t__ long_double_type_node ;
 scalar_t__ long_integer_type_node ;
 scalar_t__ long_long_integer_type_node ;
 scalar_t__ long_long_unsigned_type_node ;
 scalar_t__ long_unsigned_type_node ;
 scalar_t__ same_type_p (scalar_t__,scalar_t__) ;
 scalar_t__ stub1 (scalar_t__,scalar_t__) ;
 TYPE_1__ targetm ;
 scalar_t__ type_promotes_to (scalar_t__) ;

tree
type_after_usual_arithmetic_conversions (tree t1, tree t2)
{
  enum tree_code code1 = TREE_CODE (t1);
  enum tree_code code2 = TREE_CODE (t2);
  tree attributes;


  gcc_assert (ARITHMETIC_TYPE_P (t1)
       || TREE_CODE (t1) == VECTOR_TYPE
       || TREE_CODE (t1) == ENUMERAL_TYPE);
  gcc_assert (ARITHMETIC_TYPE_P (t2)
       || TREE_CODE (t2) == VECTOR_TYPE
       || TREE_CODE (t2) == ENUMERAL_TYPE);




  attributes = (*targetm.merge_type_attributes) (t1, t2);




  if (code1 == COMPLEX_TYPE || code2 == COMPLEX_TYPE)
    {
      tree subtype1 = code1 == COMPLEX_TYPE ? TREE_TYPE (t1) : t1;
      tree subtype2 = code2 == COMPLEX_TYPE ? TREE_TYPE (t2) : t2;
      tree subtype
 = type_after_usual_arithmetic_conversions (subtype1, subtype2);

      if (code1 == COMPLEX_TYPE && TREE_TYPE (t1) == subtype)
 return build_type_attribute_variant (t1, attributes);
      else if (code2 == COMPLEX_TYPE && TREE_TYPE (t2) == subtype)
 return build_type_attribute_variant (t2, attributes);
      else
 return build_type_attribute_variant (build_complex_type (subtype),
          attributes);
    }

  if (code1 == VECTOR_TYPE)
    {


      if (TYPE_UNSIGNED (t1))
 return build_type_attribute_variant (t1, attributes);
      else
 return build_type_attribute_variant (t2, attributes);
    }


  if (code1 == REAL_TYPE && code2 != REAL_TYPE)
    return build_type_attribute_variant (t1, attributes);
  if (code2 == REAL_TYPE && code1 != REAL_TYPE)
    return build_type_attribute_variant (t2, attributes);


  if (code1 != REAL_TYPE)
    {
      t1 = type_promotes_to (t1);
      t2 = type_promotes_to (t2);
    }


  if (TYPE_PRECISION (t1) > TYPE_PRECISION (t2))
    return build_type_attribute_variant (t1, attributes);
  else if (TYPE_PRECISION (t2) > TYPE_PRECISION (t1))
    return build_type_attribute_variant (t2, attributes);


  if (TYPE_MAIN_VARIANT (t1) == TYPE_MAIN_VARIANT (t2))
    return build_type_attribute_variant (t1, attributes);

  if (code1 != REAL_TYPE)
    {

      if (TYPE_IS_SIZETYPE (t1) > TYPE_IS_SIZETYPE (t2))
 return build_type_attribute_variant (t1, attributes);
      if (TYPE_IS_SIZETYPE (t2) > TYPE_IS_SIZETYPE (t1))
 return build_type_attribute_variant (t2, attributes);



      if (same_type_p (TYPE_MAIN_VARIANT (t1), long_long_unsigned_type_node)
   || same_type_p (TYPE_MAIN_VARIANT (t2), long_long_unsigned_type_node))
 return build_type_attribute_variant (long_long_unsigned_type_node,
          attributes);
      if (same_type_p (TYPE_MAIN_VARIANT (t1), long_long_integer_type_node)
   || same_type_p (TYPE_MAIN_VARIANT (t2), long_long_integer_type_node))
 {
   tree t = ((TYPE_UNSIGNED (t1) || TYPE_UNSIGNED (t2))
      ? long_long_unsigned_type_node
      : long_long_integer_type_node);
   return build_type_attribute_variant (t, attributes);
 }


      if (same_type_p (TYPE_MAIN_VARIANT (t1), long_unsigned_type_node)
   || same_type_p (TYPE_MAIN_VARIANT (t2), long_unsigned_type_node))
 return build_type_attribute_variant (long_unsigned_type_node,
          attributes);
      if (same_type_p (TYPE_MAIN_VARIANT (t1), long_integer_type_node)
   || same_type_p (TYPE_MAIN_VARIANT (t2), long_integer_type_node))
 {
   tree t = ((TYPE_UNSIGNED (t1) || TYPE_UNSIGNED (t2))
      ? long_unsigned_type_node : long_integer_type_node);
   return build_type_attribute_variant (t, attributes);
 }

      if (TYPE_UNSIGNED (t1))
 return build_type_attribute_variant (t1, attributes);
      else
 return build_type_attribute_variant (t2, attributes);
    }
  else
    {
      if (same_type_p (TYPE_MAIN_VARIANT (t1), long_double_type_node)
   || same_type_p (TYPE_MAIN_VARIANT (t2), long_double_type_node))
 return build_type_attribute_variant (long_double_type_node,
          attributes);
      if (same_type_p (TYPE_MAIN_VARIANT (t1), double_type_node)
   || same_type_p (TYPE_MAIN_VARIANT (t2), double_type_node))
 return build_type_attribute_variant (double_type_node,
          attributes);
      if (same_type_p (TYPE_MAIN_VARIANT (t1), float_type_node)
   || same_type_p (TYPE_MAIN_VARIANT (t2), float_type_node))
 return build_type_attribute_variant (float_type_node,
          attributes);






      return build_type_attribute_variant (t1, attributes);
    }
}
