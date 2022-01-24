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
typedef  char* tree ;
struct TYPE_2__ {char* (* merge_type_attributes ) (char*,char*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 char* FUNC10 (char*) ; 
 char* FUNC11 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 () ; 
 char* FUNC14 (char*,char*,char const*) ; 
 char* FUNC15 (char*,int) ; 
 int FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char const*,char*,char*) ; 
 char* error_mark_node ; 
 scalar_t__ FUNC18 (char*) ; 
 char* FUNC19 (char*,char*) ; 
 scalar_t__ FUNC20 (char*,char*,int,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC21 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*) ; 
 char* FUNC24 (char*,char*) ; 
 TYPE_1__ targetm ; 
 char* void_type_node ; 

tree
FUNC25 (tree t1, tree t2, tree arg1, tree arg2,
			const char* location)
{
  tree class1;
  tree class2;

  /* [expr.rel]

     If one operand is a null pointer constant, the composite pointer
     type is the type of the other operand.  */
  if (FUNC18 (arg1))
    return t2;
  if (FUNC18 (arg2))
    return t1;

  /* We have:

       [expr.rel]

       If one of the operands has type "pointer to cv1 void*", then
       the other has type "pointer to cv2T", and the composite pointer
       type is "pointer to cv12 void", where cv12 is the union of cv1
       and cv2.

    If either type is a pointer to void, make sure it is T1.  */
  if (FUNC2 (t2) == POINTER_TYPE && FUNC9 (FUNC3 (t2)))
    {
      tree t;
      t = t1;
      t1 = t2;
      t2 = t;
    }

  /* Now, if T1 is a pointer to void, merge the qualifiers.  */
  if (FUNC2 (t1) == POINTER_TYPE && FUNC9 (FUNC3 (t1)))
    {
      tree attributes;
      tree result_type;

      if (pedantic && FUNC4 (t2))
	FUNC21 ("ISO C++ forbids %s between pointer of type %<void *%> "
		 "and pointer-to-function", location);
      result_type
	= FUNC15 (void_type_node,
				   (FUNC16 (FUNC3 (t1))
				    | FUNC16 (FUNC3 (t2))));
      result_type = FUNC10 (result_type);
      /* Merge the attributes.  */
      attributes = (*targetm.merge_type_attributes) (t1, t2);
      return FUNC12 (result_type, attributes);
    }

  if (FUNC13 () && FUNC2 (t1) == POINTER_TYPE
      && FUNC2 (t2) == POINTER_TYPE)
    {
      /* APPLE LOCAL radar 4229905 - radar 6231433 */
      if (FUNC20 (t1, t2, -3, NULL_TREE, location))
      /* APPLE LOCAL 4154928 */
	return FUNC19 (t1, t2);
    }

  /* [expr.eq] permits the application of a pointer conversion to
     bring the pointers to a common type.  */
  if (FUNC2 (t1) == POINTER_TYPE && FUNC2 (t2) == POINTER_TYPE
      && FUNC0 (FUNC3 (t1))
      && FUNC0 (FUNC3 (t2))
      && !FUNC22 (FUNC3 (t1),
						     FUNC3 (t2)))
    {
      class1 = FUNC3 (t1);
      class2 = FUNC3 (t2);

      if (FUNC1 (class1, class2))
	t2 = (FUNC10
	      (FUNC15 (class1, FUNC8 (class2))));
      else if (FUNC1 (class2, class1))
	t1 = (FUNC10
	      (FUNC15 (class2, FUNC8 (class1))));
      else
	{
	  FUNC17 ("%s between distinct pointer types %qT and %qT "
		 "lacks a cast", location, t1, t2);
	  return error_mark_node;
	}
    }
  /* [expr.eq] permits the application of a pointer-to-member
     conversion to change the class type of one of the types.  */
  else if (FUNC7 (t1)
	   && !FUNC23 (FUNC5 (t1),
			    FUNC5 (t2)))
    {
      class1 = FUNC5 (t1);
      class2 = FUNC5 (t2);

      if (FUNC1 (class1, class2))
	t1 = FUNC11 (class2, FUNC6 (t1));
      else if (FUNC1 (class2, class1))
	t2 = FUNC11 (class1, FUNC6 (t2));
      else
	{
	  FUNC17 ("%s between distinct pointer-to-member types %qT and %qT "
		 "lacks a cast", location, t1, t2);
	  return error_mark_node;
	}
    }
  /* APPLE LOCAL begin blocks 6065211 */
  else if (FUNC2 (t1) != FUNC2 (t2))
    {
      FUNC17 ("%s between distinct pointer types %qT and %qT "
	     "lacks a cast", location, t1, t2);
      return error_mark_node;
    }
  /* APPLE LOCAL end blocks 6065211 */

  return FUNC14 (t1, t2, location);
}