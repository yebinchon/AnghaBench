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
 int BITS_PER_UNIT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  MULT_EXPR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ sizetype ; 

tree
FUNC8 (tree exp)
{
  tree aligned_offset = FUNC3 (exp, 2);
  tree field = FUNC3 (exp, 1);

  /* If an offset was specified in the COMPONENT_REF, it's the offset measured
     in units of DECL_OFFSET_ALIGN / BITS_PER_UNIT.  So multiply by that
     value.  */
  if (aligned_offset)
    {
      /* ??? tree_ssa_useless_type_conversion will eliminate casts to
	 sizetype from another type of the same width and signedness.  */
      if (FUNC4 (aligned_offset) != sizetype)
	aligned_offset = FUNC5 (sizetype, aligned_offset);
      return FUNC6 (MULT_EXPR, aligned_offset,
		         FUNC7 (FUNC1 (field) / BITS_PER_UNIT));
    }

  /* Otherwise, take the offset from that of the field.  Substitute
     any PLACEHOLDER_EXPR that we have.  */
  else
    return FUNC2 (FUNC0 (field), exp);
}