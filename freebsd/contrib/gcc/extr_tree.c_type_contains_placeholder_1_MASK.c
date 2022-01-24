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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
#define  ARRAY_TYPE 143 
#define  BOOLEAN_TYPE 142 
#define  COMPLEX_TYPE 141 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  ENUMERAL_TYPE 140 
 int const FIELD_DECL ; 
#define  FUNCTION_TYPE 139 
#define  INTEGER_TYPE 138 
#define  METHOD_TYPE 137 
#define  OFFSET_TYPE 136 
#define  POINTER_TYPE 135 
#define  QUAL_UNION_TYPE 134 
#define  REAL_TYPE 133 
#define  RECORD_TYPE 132 
#define  REFERENCE_TYPE 131 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int const FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
#define  UNION_TYPE 130 
#define  VECTOR_TYPE 129 
#define  VOID_TYPE 128 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC14 (tree type)
{
  /* If the size contains a placeholder or the parent type (component type in
     the case of arrays) type involves a placeholder, this type does.  */
  if (FUNC0 (FUNC10 (type))
      || FUNC0 (FUNC11 (type))
      || (FUNC5 (type) != 0
	  && FUNC13 (FUNC5 (type))))
    return true;

  /* Now do type-specific checks.  Note that the last part of the check above
     greatly limits what we have to do below.  */
  switch (FUNC4 (type))
    {
    case VOID_TYPE:
    case COMPLEX_TYPE:
    case ENUMERAL_TYPE:
    case BOOLEAN_TYPE:
    case POINTER_TYPE:
    case OFFSET_TYPE:
    case REFERENCE_TYPE:
    case METHOD_TYPE:
    case FUNCTION_TYPE:
    case VECTOR_TYPE:
      return false;

    case INTEGER_TYPE:
    case REAL_TYPE:
      /* Here we just check the bounds.  */
      return (FUNC0 (FUNC9 (type))
	      || FUNC0 (FUNC8 (type)));

    case ARRAY_TYPE:
      /* We're already checked the component type (TREE_TYPE), so just check
	 the index type.  */
      return FUNC13 (FUNC6 (type));

    case RECORD_TYPE:
    case UNION_TYPE:
    case QUAL_UNION_TYPE:
      {
	tree field;

	for (field = FUNC7 (type); field; field = FUNC3 (field))
	  if (FUNC4 (field) == FIELD_DECL
	      && (FUNC0 (FUNC1 (field))
		  || (FUNC4 (type) == QUAL_UNION_TYPE
		      && FUNC0 (FUNC2 (field)))
		  || FUNC13 (FUNC5 (field))))
	    return true;

	return false;
      }

    default:
      FUNC12 ();
    }
}