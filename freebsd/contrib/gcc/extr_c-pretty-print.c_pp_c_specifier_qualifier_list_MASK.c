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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  int /*<<< orphan*/  c_pretty_printer ;

/* Variables and functions */
#define  ARRAY_TYPE 134 
#define  BLOCK_POINTER_TYPE 133 
#define  COMPLEX_TYPE 132 
#define  FUNCTION_TYPE 131 
#define  POINTER_TYPE 130 
#define  REFERENCE_TYPE 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  VECTOR_TYPE 128 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  flag_isoc99 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10 (c_pretty_printer *pp, tree t)
{
  const enum tree_code code = FUNC0 (t);

  if (FUNC0 (t) != POINTER_TYPE)
    FUNC5 (pp, t);
  switch (code)
    {
    case REFERENCE_TYPE:
    case POINTER_TYPE:
    /* APPLE LOCAL blocks */
    case BLOCK_POINTER_TYPE:
      {
	/* Get the types-specifier of this type.  */
	tree pointee = FUNC9 (FUNC1 (t));
	FUNC10 (pp, pointee);
	if (FUNC0 (pointee) == ARRAY_TYPE
	    || FUNC0 (pointee) == FUNCTION_TYPE)
	  {
	    FUNC6 (pp);
	    FUNC4 (pp);
	  }
	else if (!FUNC2 ())
	  FUNC6 (pp);
	FUNC7 (pp, t);
      }
      break;

    case FUNCTION_TYPE:
    case ARRAY_TYPE:
      FUNC10 (pp, FUNC1 (t));
      break;

    case VECTOR_TYPE:
    case COMPLEX_TYPE:
      FUNC10 (pp, FUNC1 (t));
      if (code == COMPLEX_TYPE)
	FUNC3 (pp, flag_isoc99 ? "_Complex" : "__complex__");
      else if (code == VECTOR_TYPE)
	FUNC3 (pp, "__vector__");
      break;

    default:
      FUNC8 (pp, t);
      break;
    }
}