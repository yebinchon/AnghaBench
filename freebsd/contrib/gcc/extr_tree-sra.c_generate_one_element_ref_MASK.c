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
struct sra_elt {int /*<<< orphan*/  type; int /*<<< orphan*/  element; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARRAY_RANGE_REF ; 
 int /*<<< orphan*/  ARRAY_REF ; 
#define  ARRAY_TYPE 130 
#define  COMPLEX_TYPE 129 
 int /*<<< orphan*/  COMPONENT_REF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IMAGPART_EXPR ; 
 int RANGE_EXPR ; 
 int /*<<< orphan*/  REALPART_EXPR ; 
#define  RECORD_TYPE 128 
 int /*<<< orphan*/  TODO_update_smt_usage ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/  todoflags ; 

__attribute__((used)) static tree
FUNC10 (struct sra_elt *elt, tree base)
{
  switch (FUNC1 (FUNC3 (base)))
    {
    case RECORD_TYPE:
      {
	tree field = elt->element;

	/* Watch out for compatible records with differing field lists.  */
	if (FUNC0 (field) != FUNC4 (FUNC3 (base)))
	  field = FUNC8 (FUNC3 (base), field);

        return FUNC6 (COMPONENT_REF, elt->type, base, field, NULL);
      }

    case ARRAY_TYPE:
      todoflags |= TODO_update_smt_usage;
      if (FUNC1 (elt->element) == RANGE_EXPR)
	return FUNC7 (ARRAY_RANGE_REF, elt->type, base,
		       FUNC2 (elt->element, 0), NULL, NULL);
      else
	return FUNC7 (ARRAY_REF, elt->type, base, elt->element, NULL, NULL);

    case COMPLEX_TYPE:
      if (elt->element == integer_zero_node)
	return FUNC5 (REALPART_EXPR, elt->type, base);
      else
	return FUNC5 (IMAGPART_EXPR, elt->type, base);

    default:
      FUNC9 ();
    }
}