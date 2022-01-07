
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int COMPLEX_TYPE ;
 scalar_t__ DECIMAL_FLOAT_TYPE_P (scalar_t__) ;
 int INTEGER_TYPE ;
 scalar_t__ NULL_TREE ;
 int REAL_TYPE ;
 int TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_ATTRIBUTES (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ TYPE_PRECISION (scalar_t__) ;
 scalar_t__ TYPE_QUALS (scalar_t__) ;
 scalar_t__ TYPE_UNQUALIFIED ;
 scalar_t__ TYPE_UNSIGNED (scalar_t__) ;
 int VECTOR_TYPE ;
 scalar_t__ build_complex_type (scalar_t__) ;
 scalar_t__ build_type_attribute_variant (scalar_t__,scalar_t__) ;
 scalar_t__ dfloat128_type_node ;
 scalar_t__ dfloat32_type_node ;
 scalar_t__ dfloat64_type_node ;
 int error (char*) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 scalar_t__ long_double_type_node ;
 scalar_t__ long_integer_type_node ;
 scalar_t__ long_long_integer_type_node ;
 scalar_t__ long_long_unsigned_type_node ;
 scalar_t__ long_unsigned_type_node ;

__attribute__((used)) static tree
c_common_type (tree t1, tree t2)
{
  enum tree_code code1;
  enum tree_code code2;


  if (t1 == error_mark_node)
    return t2;
  if (t2 == error_mark_node)
    return t1;

  if (TYPE_QUALS (t1) != TYPE_UNQUALIFIED)
    t1 = TYPE_MAIN_VARIANT (t1);

  if (TYPE_QUALS (t2) != TYPE_UNQUALIFIED)
    t2 = TYPE_MAIN_VARIANT (t2);

  if (TYPE_ATTRIBUTES (t1) != NULL_TREE)
    t1 = build_type_attribute_variant (t1, NULL_TREE);

  if (TYPE_ATTRIBUTES (t2) != NULL_TREE)
    t2 = build_type_attribute_variant (t2, NULL_TREE);



  if (t1 == t2) return t1;

  code1 = TREE_CODE (t1);
  code2 = TREE_CODE (t2);

  gcc_assert (code1 == VECTOR_TYPE || code1 == COMPLEX_TYPE
       || code1 == REAL_TYPE || code1 == INTEGER_TYPE);
  gcc_assert (code2 == VECTOR_TYPE || code2 == COMPLEX_TYPE
       || code2 == REAL_TYPE || code2 == INTEGER_TYPE);




  if ((DECIMAL_FLOAT_TYPE_P (t1) || DECIMAL_FLOAT_TYPE_P (t2))
      && !(DECIMAL_FLOAT_TYPE_P (t1) && DECIMAL_FLOAT_TYPE_P (t2)))
    {
      if (code1 == VECTOR_TYPE || code2 == VECTOR_TYPE)
 {
   error ("can%'t mix operands of decimal float and vector types");
   return error_mark_node;
 }
      if (code1 == COMPLEX_TYPE || code2 == COMPLEX_TYPE)
 {
   error ("can%'t mix operands of decimal float and complex types");
   return error_mark_node;
 }
      if (code1 == REAL_TYPE && code2 == REAL_TYPE)
 {
   error ("can%'t mix operands of decimal float and other float types");
   return error_mark_node;
 }
    }




  if (code1 == VECTOR_TYPE)
    return t1;

  if (code2 == VECTOR_TYPE)
    return t2;




  if (code1 == COMPLEX_TYPE || code2 == COMPLEX_TYPE)
    {
      tree subtype1 = code1 == COMPLEX_TYPE ? TREE_TYPE (t1) : t1;
      tree subtype2 = code2 == COMPLEX_TYPE ? TREE_TYPE (t2) : t2;
      tree subtype = c_common_type (subtype1, subtype2);

      if (code1 == COMPLEX_TYPE && TREE_TYPE (t1) == subtype)
 return t1;
      else if (code2 == COMPLEX_TYPE && TREE_TYPE (t2) == subtype)
 return t2;
      else
 return build_complex_type (subtype);
    }



  if (code1 == REAL_TYPE && code2 != REAL_TYPE)
    return t1;

  if (code2 == REAL_TYPE && code1 != REAL_TYPE)
    return t2;




  if (code1 == REAL_TYPE && code2 == REAL_TYPE)
    {
      if (TYPE_MAIN_VARIANT (t1) == dfloat128_type_node
   || TYPE_MAIN_VARIANT (t2) == dfloat128_type_node)
 return dfloat128_type_node;
      else if (TYPE_MAIN_VARIANT (t1) == dfloat64_type_node
        || TYPE_MAIN_VARIANT (t2) == dfloat64_type_node)
 return dfloat64_type_node;
      else if (TYPE_MAIN_VARIANT (t1) == dfloat32_type_node
        || TYPE_MAIN_VARIANT (t2) == dfloat32_type_node)
 return dfloat32_type_node;
    }



  if (TYPE_PRECISION (t1) > TYPE_PRECISION (t2))
    return t1;
  else if (TYPE_PRECISION (t2) > TYPE_PRECISION (t1))
    return t2;





  if (TYPE_MAIN_VARIANT (t1) == long_long_unsigned_type_node
      || TYPE_MAIN_VARIANT (t2) == long_long_unsigned_type_node)
    return long_long_unsigned_type_node;

  if (TYPE_MAIN_VARIANT (t1) == long_long_integer_type_node
      || TYPE_MAIN_VARIANT (t2) == long_long_integer_type_node)
    {
      if (TYPE_UNSIGNED (t1) || TYPE_UNSIGNED (t2))
 return long_long_unsigned_type_node;
      else
 return long_long_integer_type_node;
    }

  if (TYPE_MAIN_VARIANT (t1) == long_unsigned_type_node
      || TYPE_MAIN_VARIANT (t2) == long_unsigned_type_node)
    return long_unsigned_type_node;

  if (TYPE_MAIN_VARIANT (t1) == long_integer_type_node
      || TYPE_MAIN_VARIANT (t2) == long_integer_type_node)
    {


      if (TYPE_UNSIGNED (t1) || TYPE_UNSIGNED (t2))
 return long_unsigned_type_node;
      else
 return long_integer_type_node;
    }


  if (TYPE_MAIN_VARIANT (t1) == long_double_type_node
      || TYPE_MAIN_VARIANT (t2) == long_double_type_node)
    return long_double_type_node;



  if (TYPE_UNSIGNED (t1))
    return t1;
  else
    return t2;
}
