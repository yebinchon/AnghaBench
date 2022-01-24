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
struct TYPE_2__ {int (* comp_type_attributes ) (scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
#define  ARRAY_TYPE 135 
#define  BLOCK_POINTER_TYPE 134 
#define  ENUMERAL_TYPE 133 
 int const ERROR_MARK ; 
#define  FUNCTION_TYPE 132 
 int const INTEGER_CST ; 
 int const INTEGER_TYPE ; 
#define  POINTER_TYPE 131 
#define  RECORD_TYPE 130 
 int const FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
#define  UNION_TYPE 129 
#define  VECTOR_TYPE 128 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int FUNC18 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__) ; 
 int FUNC20 (scalar_t__,scalar_t__) ; 
 int FUNC21 (scalar_t__,scalar_t__) ; 
 TYPE_1__ targetm ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC24 (tree type1, tree type2)
{
  tree t1 = type1;
  tree t2 = type2;
  int attrval, val;

  /* Suppress errors caused by previously reported errors.  */

  if (t1 == t2 || !t1 || !t2
      || FUNC0 (t1) == ERROR_MARK || FUNC0 (t2) == ERROR_MARK)
    return 1;

  /* If either type is the internal version of sizetype, return the
     language version.  */
  if (FUNC0 (t1) == INTEGER_TYPE && FUNC4 (t1)
      && FUNC9 (t1))
    t1 = FUNC9 (t1);

  if (FUNC0 (t2) == INTEGER_TYPE && FUNC4 (t2)
      && FUNC9 (t2))
    t2 = FUNC9 (t2);


  /* Enumerated types are compatible with integer types, but this is
     not transitive: two enumerated types in the same translation unit
     are compatible with each other only if they are the same type.  */

  if (FUNC0 (t1) == ENUMERAL_TYPE && FUNC0 (t2) != ENUMERAL_TYPE)
    t1 = FUNC16 (FUNC10 (t1), FUNC13 (t1));
  else if (FUNC0 (t2) == ENUMERAL_TYPE && FUNC0 (t1) != ENUMERAL_TYPE)
    t2 = FUNC16 (FUNC10 (t2), FUNC13 (t2));

  if (t1 == t2)
    return 1;

  /* Different classes of types can't be compatible.  */

  if (FUNC0 (t1) != FUNC0 (t2))
    return 0;

  /* Qualifiers must match. C99 6.7.3p9 */

  if (FUNC11 (t1) != FUNC11 (t2))
    return 0;

  /* Allow for two different type nodes which have essentially the same
     definition.  Note that we already checked for equality of the type
     qualifiers (just above).  */

  if (FUNC0 (t1) != ARRAY_TYPE
      && FUNC5 (t1) == FUNC5 (t2))
    return 1;

  /* 1 if no need for warning yet, 2 if warning cause has been seen.  */
  if (!(attrval = targetm.comp_type_attributes (t1, t2)))
     return 0;

  /* 1 if no need for warning yet, 2 if warning cause has been seen.  */
  val = 0;

  switch (FUNC0 (t1))
    {
    /* APPLE LOCAL begin radar 5795493 */
      case BLOCK_POINTER_TYPE:
	 val = (FUNC0 (t2) == BLOCK_POINTER_TYPE) && 
	       FUNC23 (FUNC1 (t1), FUNC1 (t2));
	 break;
	 
    /* APPLE LOCAL end radar 5795493 */
    case POINTER_TYPE:
      /* Do not remove mode or aliasing information.  */
      if (FUNC8 (t1) != FUNC8 (t2)
	  || FUNC12 (t1) != FUNC12 (t2))
	break;
      val = (FUNC1 (t1) == FUNC1 (t2)
	     ? 1 : FUNC24 (FUNC1 (t1), FUNC1 (t2)));
      break;

    case FUNCTION_TYPE:
      val = FUNC18 (t1, t2);
      break;

    case ARRAY_TYPE:
      {
	tree d1 = FUNC3 (t1);
	tree d2 = FUNC3 (t2);
	bool d1_variable, d2_variable;
	bool d1_zero, d2_zero;
	val = 1;

	/* Target types must match incl. qualifiers.  */
	if (FUNC1 (t1) != FUNC1 (t2)
	    && 0 == (val = FUNC24 (FUNC1 (t1), FUNC1 (t2))))
	  return 0;

	/* Sizes must match unless one is missing or variable.  */
	if (d1 == 0 || d2 == 0 || d1 == d2)
	  break;

	d1_zero = !FUNC6 (d1);
	d2_zero = !FUNC6 (d2);

	d1_variable = (!d1_zero
		       && (FUNC0 (FUNC7 (d1)) != INTEGER_CST
			   || FUNC0 (FUNC6 (d1)) != INTEGER_CST));
	d2_variable = (!d2_zero
		       && (FUNC0 (FUNC7 (d2)) != INTEGER_CST
			   || FUNC0 (FUNC6 (d2)) != INTEGER_CST));
	d1_variable = d1_variable || (d1_zero && FUNC17 (t1));
	d2_variable = d2_variable || (d2_zero && FUNC17 (t2));

	if (d1_variable || d2_variable)
	  break;
	if (d1_zero && d2_zero)
	  break;
	if (d1_zero || d2_zero
	    || !FUNC22 (FUNC7 (d1), FUNC7 (d2))
	    || !FUNC22 (FUNC6 (d1), FUNC6 (d2)))
	  val = 0;

	break;
      }

    case ENUMERAL_TYPE:
    case RECORD_TYPE:
    case UNION_TYPE:
      if (val != 1 && !FUNC19 (t1, t2))
	{
	  tree a1 = FUNC2 (t1);
	  tree a2 = FUNC2 (t2);

	  if (! FUNC15 (a1, a2)
	      && ! FUNC15 (a2, a1))
	    break;

	  if (attrval != 2)
	    return FUNC21 (t1, t2);
	  val = FUNC21 (t1, t2);
	}
      break;

    case VECTOR_TYPE:
      val = FUNC14 (t1) == FUNC14 (t2)
	    && FUNC24 (FUNC1 (t1), FUNC1 (t2));
      break;

    default:
      break;
    }
  return attrval == 2 && val == 1 ? 2 : val;
}