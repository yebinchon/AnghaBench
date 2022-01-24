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

/* Variables and functions */
 int /*<<< orphan*/  MULT_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ sizetype ; 

tree
FUNC8 (tree exp)
{
  tree aligned_size = FUNC1 (exp, 3);
  tree elmt_type = FUNC2 (FUNC2 (FUNC1 (exp, 0)));

  /* If a size was specified in the ARRAY_REF, it's the size measured
     in alignment units of the element type.  So multiply by that value.  */
  if (aligned_size)
    {
      /* ??? tree_ssa_useless_type_conversion will eliminate casts to
	 sizetype from another type of the same width and signedness.  */
      if (FUNC2 (aligned_size) != sizetype)
	aligned_size = FUNC5 (sizetype, aligned_size);
      return FUNC6 (MULT_EXPR, aligned_size,
		         FUNC7 (FUNC3 (elmt_type)));
    }

  /* Otherwise, take the size from that of the element type.  Substitute
     any PLACEHOLDER_EXPR that we have.  */
  else
    return FUNC0 (FUNC4 (elmt_type), exp);
}