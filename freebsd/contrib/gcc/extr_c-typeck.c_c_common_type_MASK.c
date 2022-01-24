#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int COMPLEX_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int INTEGER_TYPE ; 
 scalar_t__ NULL_TREE ; 
 int REAL_TYPE ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ TYPE_UNQUALIFIED ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int VECTOR_TYPE ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ dfloat128_type_node ; 
 scalar_t__ dfloat32_type_node ; 
 scalar_t__ dfloat64_type_node ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ long_double_type_node ; 
 scalar_t__ long_integer_type_node ; 
 scalar_t__ long_long_integer_type_node ; 
 scalar_t__ long_long_unsigned_type_node ; 
 scalar_t__ long_unsigned_type_node ; 

__attribute__((used)) static tree
FUNC12 (tree t1, tree t2)
{
  enum tree_code code1;
  enum tree_code code2;

  /* If one type is nonsense, use the other.  */
  if (t1 == error_mark_node)
    return t2;
  if (t2 == error_mark_node)
    return t1;

  if (FUNC6 (t1) != TYPE_UNQUALIFIED)
    t1 = FUNC4 (t1);

  if (FUNC6 (t2) != TYPE_UNQUALIFIED)
    t2 = FUNC4 (t2);

  if (FUNC3 (t1) != NULL_TREE)
    t1 = FUNC9 (t1, NULL_TREE);

  if (FUNC3 (t2) != NULL_TREE)
    t2 = FUNC9 (t2, NULL_TREE);

  /* Save time if the two types are the same.  */

  if (t1 == t2) return t1;

  code1 = FUNC1 (t1);
  code2 = FUNC1 (t2);

  FUNC11 (code1 == VECTOR_TYPE || code1 == COMPLEX_TYPE
	      || code1 == REAL_TYPE || code1 == INTEGER_TYPE);
  FUNC11 (code2 == VECTOR_TYPE || code2 == COMPLEX_TYPE
	      || code2 == REAL_TYPE || code2 == INTEGER_TYPE);

  /* When one operand is a decimal float type, the other operand cannot be
     a generic float type or a complex type.  We also disallow vector types
     here.  */
  if ((FUNC0 (t1) || FUNC0 (t2))
      && !(FUNC0 (t1) && FUNC0 (t2)))
    {
      if (code1 == VECTOR_TYPE || code2 == VECTOR_TYPE)
	{
	  FUNC10 ("can%'t mix operands of decimal float and vector types");
	  return error_mark_node;
	}
      if (code1 == COMPLEX_TYPE || code2 == COMPLEX_TYPE)
	{
	  FUNC10 ("can%'t mix operands of decimal float and complex types");
	  return error_mark_node;
	}
      if (code1 == REAL_TYPE && code2 == REAL_TYPE)
	{
	  FUNC10 ("can%'t mix operands of decimal float and other float types");
	  return error_mark_node;
	}
    }

  /* If one type is a vector type, return that type.  (How the usual
     arithmetic conversions apply to the vector types extension is not
     precisely specified.)  */
  if (code1 == VECTOR_TYPE)
    return t1;

  if (code2 == VECTOR_TYPE)
    return t2;

  /* If one type is complex, form the common type of the non-complex
     components, then make that complex.  Use T1 or T2 if it is the
     required type.  */
  if (code1 == COMPLEX_TYPE || code2 == COMPLEX_TYPE)
    {
      tree subtype1 = code1 == COMPLEX_TYPE ? FUNC2 (t1) : t1;
      tree subtype2 = code2 == COMPLEX_TYPE ? FUNC2 (t2) : t2;
      tree subtype = FUNC12 (subtype1, subtype2);

      if (code1 == COMPLEX_TYPE && FUNC2 (t1) == subtype)
	return t1;
      else if (code2 == COMPLEX_TYPE && FUNC2 (t2) == subtype)
	return t2;
      else
	return FUNC8 (subtype);
    }

  /* If only one is real, use it as the result.  */

  if (code1 == REAL_TYPE && code2 != REAL_TYPE)
    return t1;

  if (code2 == REAL_TYPE && code1 != REAL_TYPE)
    return t2;

  /* If both are real and either are decimal floating point types, use
     the decimal floating point type with the greater precision. */

  if (code1 == REAL_TYPE && code2 == REAL_TYPE)
    {
      if (FUNC4 (t1) == dfloat128_type_node
	  || FUNC4 (t2) == dfloat128_type_node)
	return dfloat128_type_node;
      else if (FUNC4 (t1) == dfloat64_type_node
	       || FUNC4 (t2) == dfloat64_type_node)
	return dfloat64_type_node;
      else if (FUNC4 (t1) == dfloat32_type_node
	       || FUNC4 (t2) == dfloat32_type_node)
	return dfloat32_type_node;
    }

  /* Both real or both integers; use the one with greater precision.  */

  if (FUNC5 (t1) > FUNC5 (t2))
    return t1;
  else if (FUNC5 (t2) > FUNC5 (t1))
    return t2;

  /* Same precision.  Prefer long longs to longs to ints when the
     same precision, following the C99 rules on integer type rank
     (which are equivalent to the C90 rules for C90 types).  */

  if (FUNC4 (t1) == long_long_unsigned_type_node
      || FUNC4 (t2) == long_long_unsigned_type_node)
    return long_long_unsigned_type_node;

  if (FUNC4 (t1) == long_long_integer_type_node
      || FUNC4 (t2) == long_long_integer_type_node)
    {
      if (FUNC7 (t1) || FUNC7 (t2))
	return long_long_unsigned_type_node;
      else
	return long_long_integer_type_node;
    }

  if (FUNC4 (t1) == long_unsigned_type_node
      || FUNC4 (t2) == long_unsigned_type_node)
    return long_unsigned_type_node;

  if (FUNC4 (t1) == long_integer_type_node
      || FUNC4 (t2) == long_integer_type_node)
    {
      /* But preserve unsignedness from the other type,
	 since long cannot hold all the values of an unsigned int.  */
      if (FUNC7 (t1) || FUNC7 (t2))
	return long_unsigned_type_node;
      else
	return long_integer_type_node;
    }

  /* Likewise, prefer long double to double even if same size.  */
  if (FUNC4 (t1) == long_double_type_node
      || FUNC4 (t2) == long_double_type_node)
    return long_double_type_node;

  /* Otherwise prefer the unsigned one.  */

  if (FUNC7 (t1))
    return t1;
  else
    return t2;
}