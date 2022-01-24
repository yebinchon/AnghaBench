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
#define  BOOLEAN_TYPE 136 
#define  COMPLEX_TYPE 135 
#define  ENUMERAL_TYPE 134 
#define  INTEGER_TYPE 133 
 int /*<<< orphan*/  NULL_TREE ; 
#define  OFFSET_TYPE 132 
#define  POINTER_TYPE 131 
#define  REAL_TYPE 130 
#define  REFERENCE_TYPE 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  VECTOR_TYPE 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dconst1 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC10 (tree type)
{
  switch (FUNC0 (type))
    {
    case INTEGER_TYPE: case ENUMERAL_TYPE: case BOOLEAN_TYPE:
    case POINTER_TYPE: case REFERENCE_TYPE:
    case OFFSET_TYPE:
      return FUNC4 (type, 1);

    case REAL_TYPE:
      return FUNC5 (type, dconst1);

    case VECTOR_TYPE:
      {
	tree scalar, cst;
	int i;

	scalar = FUNC10 (FUNC1 (type));

	/* Create 'vect_cst_ = {cst,cst,...,cst}'  */
	cst = NULL_TREE;
	for (i = FUNC2 (type); --i >= 0; )
	  cst = FUNC9 (NULL_TREE, scalar, cst);

	return FUNC6 (type, cst);
      }

    case COMPLEX_TYPE:
      return FUNC3 (type,
			    FUNC10 (FUNC1 (type)),
			    FUNC7 (FUNC1 (type), integer_zero_node));

    default:
      FUNC8 ();
    }
}