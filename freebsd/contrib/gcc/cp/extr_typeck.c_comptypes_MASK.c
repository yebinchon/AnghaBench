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
#define  ARRAY_TYPE 143 
#define  BLOCK_POINTER_TYPE 142 
#define  BOUND_TEMPLATE_TEMPLATE_PARM 141 
 int COMPARE_BASE ; 
 int COMPARE_DERIVED ; 
 int COMPARE_REDECLARATION ; 
 int COMPARE_STRICT ; 
#define  COMPLEX_TYPE 140 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
#define  FUNCTION_TYPE 139 
 int const INTEGER_TYPE ; 
#define  METHOD_TYPE 138 
#define  OFFSET_TYPE 137 
#define  POINTER_TYPE 136 
#define  RECORD_TYPE 135 
#define  REFERENCE_TYPE 134 
#define  TEMPLATE_TEMPLATE_PARM 133 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
#define  TEMPLATE_TYPE_PARM 132 
 int const FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
#define  TYPENAME_TYPE 131 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__) ; 
#define  UNBOUND_CLASS_TEMPLATE 130 
#define  UNION_TYPE 129 
#define  VECTOR_TYPE 128 
 int /*<<< orphan*/  FUNC26 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC31 (int) ; 
 scalar_t__ FUNC32 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC33 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC34 (scalar_t__,scalar_t__) ; 
 int FUNC35 (scalar_t__,scalar_t__) ; 
 TYPE_1__ targetm ; 

bool
FUNC36 (tree t1, tree t2, int strict)
{
  if (t1 == t2)
    return true;

  /* Suppress errors caused by previously reported errors.  */
  if (t1 == error_mark_node || t2 == error_mark_node)
    return false;

  FUNC31 (FUNC17 (t1) && FUNC17 (t2));

  /* TYPENAME_TYPEs should be resolved if the qualifying scope is the
     current instantiation.  */
  if (FUNC5 (t1) == TYPENAME_TYPE)
    {
      tree resolved = FUNC32 (t1, /*only_current_p=*/true);

      if (resolved != error_mark_node)
	t1 = resolved;
    }

  if (FUNC5 (t2) == TYPENAME_TYPE)
    {
      tree resolved = FUNC32 (t2, /*only_current_p=*/true);

      if (resolved != error_mark_node)
	t2 = resolved;
    }

  /* If either type is the internal version of sizetype, use the
     language version.  */
  if (FUNC5 (t1) == INTEGER_TYPE && FUNC12 (t1)
      && FUNC16 (t1))
    t1 = FUNC16 (t1);

  if (FUNC5 (t2) == INTEGER_TYPE && FUNC12 (t2)
      && FUNC16 (t2))
    t2 = FUNC16 (t2);

  if (FUNC19 (t1))
    t1 = FUNC18 (t1);
  if (FUNC19 (t2))
    t2 = FUNC18 (t2);

  /* Different classes of types can't be compatible.  */
  if (FUNC5 (t1) != FUNC5 (t2))
    return false;

  /* Qualifiers must match.  For array types, we will check when we
     recur on the array element types.  */
  if (FUNC5 (t1) != ARRAY_TYPE
      && FUNC20 (t1) != FUNC20 (t2))
    return false;
  if (FUNC10 (t1) != FUNC10 (t2))
    return false;

  /* Allow for two different type nodes which have essentially the same
     definition.  Note that we already checked for equality of the type
     qualifiers (just above).  */

  if (FUNC5 (t1) != ARRAY_TYPE
      && FUNC13 (t1) == FUNC13 (t2))
    return true;

  /* Compare the types.  Break out if they could be the same.  */
  switch (FUNC5 (t1))
    {
    case TEMPLATE_TEMPLATE_PARM:
    case BOUND_TEMPLATE_TEMPLATE_PARM:
      if (FUNC3 (t1) != FUNC3 (t2)
	  || FUNC4 (t1) != FUNC4 (t2))
	return false;
      if (!FUNC28
	  (FUNC0 (FUNC2 (t1)),
	   FUNC0 (FUNC2 (t2))))
	return false;
      if (FUNC5 (t1) == TEMPLATE_TEMPLATE_PARM)
	break;
      /* Don't check inheritance.  */
      strict = COMPARE_STRICT;
      /* Fall through.  */

    case RECORD_TYPE:
    case UNION_TYPE:
      if (FUNC22 (t1) && FUNC22 (t2)
	  && (FUNC24 (t1) == FUNC24 (t2)
	      || FUNC5 (t1) == BOUND_TEMPLATE_TEMPLATE_PARM)
	  && FUNC27 (FUNC23 (t1), FUNC23 (t2)))
	break;

      if ((strict & COMPARE_BASE) && FUNC1 (t1, t2))
	break;
      else if ((strict & COMPARE_DERIVED) && FUNC1 (t2, t1))
	break;

      return false;

    case OFFSET_TYPE:
      if (!FUNC36 (FUNC15 (t1), FUNC15 (t2),
		      strict & ~COMPARE_REDECLARATION))
	return false;
      if (!FUNC34 (FUNC6 (t1), FUNC6 (t2)))
	return false;
      break;

      /* APPLE LOCAL begin blocks 6040305 */
      case BLOCK_POINTER_TYPE:
	 if (FUNC5 (t2) == BLOCK_POINTER_TYPE)
	 {
	   tree pt1 = FUNC6 (t1);
	   tree pt2 = FUNC6 (t2);
	   if (!FUNC33 (FUNC6 (pt1),
							  FUNC6 (pt2)))
	     return false;
	   if (!FUNC29 (FUNC8 (pt1), FUNC8 (pt2)))
	     return false;
	   break;
	 }
	 /* APPLE LOCAL end blocks 6040305 */

    case POINTER_TYPE:
    case REFERENCE_TYPE:
      if (FUNC14 (t1) != FUNC14 (t2)
	  || FUNC21 (t1) != FUNC21 (t2)
	  || !FUNC34 (FUNC6 (t1), FUNC6 (t2)))
	return false;
      break;

    case METHOD_TYPE:
    case FUNCTION_TYPE:
      if (!FUNC34 (FUNC6 (t1), FUNC6 (t2)))
	return false;
      if (!FUNC29 (FUNC8 (t1), FUNC8 (t2)))
	return false;
      break;

    case ARRAY_TYPE:
      /* Target types must match incl. qualifiers.  */
      if (!FUNC26 (t1, t2, !!(strict & COMPARE_REDECLARATION)))
	return false;
      break;

    case TEMPLATE_TYPE_PARM:
      if (FUNC3 (t1) != FUNC3 (t2)
	  || FUNC4 (t1) != FUNC4 (t2))
	return false;
      break;

    case TYPENAME_TYPE:
      if (!FUNC30 (FUNC7 (t1),
			  FUNC7 (t2)))
	return false;
      if (!FUNC34 (FUNC9 (t1), FUNC9 (t2)))
	return false;
      break;

    case UNBOUND_CLASS_TEMPLATE:
      if (!FUNC30 (FUNC11 (t1), FUNC11 (t2)))
	return false;
      if (!FUNC34 (FUNC9 (t1), FUNC9 (t2)))
	return false;
      break;

    case COMPLEX_TYPE:
      if (!FUNC34 (FUNC6 (t1), FUNC6 (t2)))
	return false;
      break;

    case VECTOR_TYPE:
      if (FUNC25 (t1) != FUNC25 (t2)
	  || !FUNC34 (FUNC6 (t1), FUNC6 (t2)))
	return false;
      break;

    default:
      return false;
    }

  /* If we get here, we know that from a target independent POV the
     types are the same.  Make sure the target attributes are also
     the same.  */
  return targetm.comp_type_attributes (t1, t2);
}