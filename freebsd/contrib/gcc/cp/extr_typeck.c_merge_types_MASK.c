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
#define  ARRAY_TYPE 134 
#define  FUNCTION_TYPE 133 
#define  METHOD_TYPE 132 
 scalar_t__ NULL_TREE ; 
#define  OFFSET_TYPE 131 
#define  POINTER_TYPE 130 
#define  REFERENCE_TYPE 129 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
#define  TYPENAME_TYPE 128 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 scalar_t__ FUNC21 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC22 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC23 (scalar_t__,int) ; 
 scalar_t__ FUNC24 (scalar_t__,scalar_t__) ; 
 int FUNC25 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC26 (scalar_t__) ; 
 scalar_t__ FUNC27 (scalar_t__,scalar_t__) ; 
 TYPE_1__ targetm ; 
 scalar_t__ void_type_node ; 

tree
FUNC28 (tree t1, tree t2)
{
  enum tree_code code1;
  enum tree_code code2;
  tree attributes;

  /* Save time if the two types are the same.  */
  if (t1 == t2)
    return t1;
  if (FUNC26 (t1) == FUNC26 (t2))
    return t1;

  /* If one type is nonsense, use the other.  */
  if (t1 == error_mark_node)
    return t2;
  if (t2 == error_mark_node)
    return t1;

  /* Merge the attributes.  */
  attributes = (*targetm.merge_type_attributes) (t1, t2);

  if (FUNC8 (t1))
    t1 = FUNC7 (t1);
  if (FUNC8 (t2))
    t2 = FUNC7 (t2);

  code1 = FUNC1 (t1);
  code2 = FUNC1 (t2);

  switch (code1)
    {
    case POINTER_TYPE:
    case REFERENCE_TYPE:
      /* For two pointers, do this recursively on the target type.  */
      {
	tree target = FUNC28 (FUNC2 (t1), FUNC2 (t2));
	int quals = FUNC25 (t1);

	if (code1 == POINTER_TYPE)
	  t1 = FUNC17 (target);
	else
	  t1 = FUNC20 (target);
	t1 = FUNC21 (t1, attributes);
	t1 = FUNC23 (t1, quals);

	if (FUNC1 (target) == METHOD_TYPE)
	  t1 = FUNC19 (t1);

	return t1;
      }

    case OFFSET_TYPE:
      {
	int quals;
	tree pointee;
	quals = FUNC25 (t1);
	pointee = FUNC28 (FUNC10 (t1),
			       FUNC10 (t2));
	t1 = FUNC18 (FUNC9 (t1),
				pointee);
	t1 = FUNC23 (t1, quals);
	break;
      }

    case ARRAY_TYPE:
      {
	tree elt = FUNC28 (FUNC2 (t1), FUNC2 (t2));
	/* Save space: see if the result is identical to one of the args.  */
	if (elt == FUNC2 (t1) && FUNC6 (t1))
	  return FUNC21 (t1, attributes);
	if (elt == FUNC2 (t2) && FUNC6 (t2))
	  return FUNC21 (t2, attributes);
	/* Merge the element types, and have a size if either arg has one.  */
	t1 = FUNC13
	  (elt, FUNC6 (FUNC6 (t1) ? t1 : t2));
	break;
      }

    case FUNCTION_TYPE:
      /* Function types: prefer the one that specified arg types.
	 If both do, merge the arg types.  Also merge the return types.  */
      {
	tree valtype = FUNC28 (FUNC2 (t1), FUNC2 (t2));
	tree p1 = FUNC4 (t1);
	tree p2 = FUNC4 (t2);
	tree rval, raises;

	/* Save space: see if the result is identical to one of the args.  */
	if (valtype == FUNC2 (t1) && ! p2)
	  return FUNC24 (t1, attributes);
	if (valtype == FUNC2 (t2) && ! p1)
	  return FUNC24 (t2, attributes);

	/* Simple way if one arg fails to specify argument types.  */
	if (p1 == NULL_TREE || FUNC3 (p1) == void_type_node)
	  {
	    rval = FUNC15 (valtype, p2);
	    if ((raises = FUNC11 (t2)))
	      rval = FUNC14 (rval, raises);
	    return FUNC24 (rval, attributes);
	  }
	raises = FUNC11 (t1);
	if (p2 == NULL_TREE || FUNC3 (p2) == void_type_node)
	  {
	    rval = FUNC15 (valtype, p1);
	    if (raises)
	      rval = FUNC14 (rval, raises);
	    return FUNC24 (rval, attributes);
	  }

	rval = FUNC15 (valtype, FUNC22 (p1, p2));
	t1 = FUNC14 (rval, raises);
	break;
      }

    case METHOD_TYPE:
      {
	/* Get this value the long way, since TYPE_METHOD_BASETYPE
	   is just the main variant of this.  */
	tree basetype = FUNC2 (FUNC3 (FUNC4 (t2)));
	tree raises = FUNC11 (t1);
	tree t3;

	/* If this was a member function type, get back to the
	   original type of type member function (i.e., without
	   the class instance variable up front.  */
	t1 = FUNC15 (FUNC2 (t1),
				  FUNC0 (FUNC4 (t1)));
	t2 = FUNC15 (FUNC2 (t2),
				  FUNC0 (FUNC4 (t2)));
	t3 = FUNC28 (t1, t2);
	t3 = FUNC16 (basetype, FUNC2 (t3),
					 FUNC4 (t3));
	t1 = FUNC14 (t3, raises);
	break;
      }

    case TYPENAME_TYPE:
      /* There is no need to merge attributes into a TYPENAME_TYPE.
	 When the type is instantiated it will have whatever
	 attributes result from the instantiation.  */
      return t1;

    default:;
    }

  if (FUNC12 (FUNC5 (t1), attributes))
    return t1;
  else if (FUNC12 (FUNC5 (t2), attributes))
    return t2;
  else
    return FUNC24 (t1, attributes);
}