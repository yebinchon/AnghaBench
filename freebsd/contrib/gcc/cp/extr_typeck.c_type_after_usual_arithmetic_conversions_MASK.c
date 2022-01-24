#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_2__ {scalar_t__ (* merge_type_attributes ) (scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int COMPLEX_TYPE ; 
 scalar_t__ ENUMERAL_TYPE ; 
 int REAL_TYPE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ VECTOR_TYPE ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ double_type_node ; 
 scalar_t__ float_type_node ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ long_double_type_node ; 
 scalar_t__ long_integer_type_node ; 
 scalar_t__ long_long_integer_type_node ; 
 scalar_t__ long_long_unsigned_type_node ; 
 scalar_t__ long_unsigned_type_node ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 TYPE_1__ targetm ; 
 scalar_t__ FUNC12 (scalar_t__) ; 

tree
FUNC13 (tree t1, tree t2)
{
  enum tree_code code1 = FUNC1 (t1);
  enum tree_code code2 = FUNC1 (t2);
  tree attributes;

  /* FIXME: Attributes.  */
  FUNC9 (FUNC0 (t1)
	      || FUNC1 (t1) == VECTOR_TYPE
	      || FUNC1 (t1) == ENUMERAL_TYPE);
  FUNC9 (FUNC0 (t2)
	      || FUNC1 (t2) == VECTOR_TYPE
	      || FUNC1 (t2) == ENUMERAL_TYPE);

  /* In what follows, we slightly generalize the rules given in [expr] so
     as to deal with `long long' and `complex'.  First, merge the
     attributes.  */
  attributes = (*targetm.merge_type_attributes) (t1, t2);

  /* If one type is complex, form the common type of the non-complex
     components, then make that complex.  Use T1 or T2 if it is the
     required type.  */
  if (code1 == COMPLEX_TYPE || code2 == COMPLEX_TYPE)
    {
      tree subtype1 = code1 == COMPLEX_TYPE ? FUNC2 (t1) : t1;
      tree subtype2 = code2 == COMPLEX_TYPE ? FUNC2 (t2) : t2;
      tree subtype
	= FUNC13 (subtype1, subtype2);

      if (code1 == COMPLEX_TYPE && FUNC2 (t1) == subtype)
	return FUNC8 (t1, attributes);
      else if (code2 == COMPLEX_TYPE && FUNC2 (t2) == subtype)
	return FUNC8 (t2, attributes);
      else
	return FUNC8 (FUNC7 (subtype),
					     attributes);
    }

  if (code1 == VECTOR_TYPE)
    {
      /* When we get here we should have two vectors of the same size.
	 Just prefer the unsigned one if present.  */
      if (FUNC6 (t1))
	return FUNC8 (t1, attributes);
      else
	return FUNC8 (t2, attributes);
    }

  /* If only one is real, use it as the result.  */
  if (code1 == REAL_TYPE && code2 != REAL_TYPE)
    return FUNC8 (t1, attributes);
  if (code2 == REAL_TYPE && code1 != REAL_TYPE)
    return FUNC8 (t2, attributes);

  /* Perform the integral promotions.  */
  if (code1 != REAL_TYPE)
    {
      t1 = FUNC12 (t1);
      t2 = FUNC12 (t2);
    }

  /* Both real or both integers; use the one with greater precision.  */
  if (FUNC5 (t1) > FUNC5 (t2))
    return FUNC8 (t1, attributes);
  else if (FUNC5 (t2) > FUNC5 (t1))
    return FUNC8 (t2, attributes);

  /* The types are the same; no need to do anything fancy.  */
  if (FUNC4 (t1) == FUNC4 (t2))
    return FUNC8 (t1, attributes);

  if (code1 != REAL_TYPE)
    {
      /* If one is a sizetype, use it so size_binop doesn't blow up.  */
      if (FUNC3 (t1) > FUNC3 (t2))
	return FUNC8 (t1, attributes);
      if (FUNC3 (t2) > FUNC3 (t1))
	return FUNC8 (t2, attributes);

      /* If one is unsigned long long, then convert the other to unsigned
	 long long.  */
      if (FUNC10 (FUNC4 (t1), long_long_unsigned_type_node)
	  || FUNC10 (FUNC4 (t2), long_long_unsigned_type_node))
	return FUNC8 (long_long_unsigned_type_node,
					     attributes);
      /* If one is a long long, and the other is an unsigned long, and
	 long long can represent all the values of an unsigned long, then
	 convert to a long long.  Otherwise, convert to an unsigned long
	 long.  Otherwise, if either operand is long long, convert the
	 other to long long.

	 Since we're here, we know the TYPE_PRECISION is the same;
	 therefore converting to long long cannot represent all the values
	 of an unsigned long, so we choose unsigned long long in that
	 case.  */
      if (FUNC10 (FUNC4 (t1), long_long_integer_type_node)
	  || FUNC10 (FUNC4 (t2), long_long_integer_type_node))
	{
	  tree t = ((FUNC6 (t1) || FUNC6 (t2))
		    ? long_long_unsigned_type_node
		    : long_long_integer_type_node);
	  return FUNC8 (t, attributes);
	}

      /* Go through the same procedure, but for longs.  */
      if (FUNC10 (FUNC4 (t1), long_unsigned_type_node)
	  || FUNC10 (FUNC4 (t2), long_unsigned_type_node))
	return FUNC8 (long_unsigned_type_node,
					     attributes);
      if (FUNC10 (FUNC4 (t1), long_integer_type_node)
	  || FUNC10 (FUNC4 (t2), long_integer_type_node))
	{
	  tree t = ((FUNC6 (t1) || FUNC6 (t2))
		    ? long_unsigned_type_node : long_integer_type_node);
	  return FUNC8 (t, attributes);
	}
      /* Otherwise prefer the unsigned one.  */
      if (FUNC6 (t1))
	return FUNC8 (t1, attributes);
      else
	return FUNC8 (t2, attributes);
    }
  else
    {
      if (FUNC10 (FUNC4 (t1), long_double_type_node)
	  || FUNC10 (FUNC4 (t2), long_double_type_node))
	return FUNC8 (long_double_type_node,
					     attributes);
      if (FUNC10 (FUNC4 (t1), double_type_node)
	  || FUNC10 (FUNC4 (t2), double_type_node))
	return FUNC8 (double_type_node,
					     attributes);
      if (FUNC10 (FUNC4 (t1), float_type_node)
	  || FUNC10 (FUNC4 (t2), float_type_node))
	return FUNC8 (float_type_node,
					     attributes);

      /* Two floating-point types whose TYPE_MAIN_VARIANTs are none of
	 the standard C++ floating-point types.  Logic earlier in this
	 function has already eliminated the possibility that
	 TYPE_PRECISION (t2) != TYPE_PRECISION (t1), so there's no
	 compelling reason to choose one or the other.  */
      return FUNC8 (t1, attributes);
    }
}