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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  REPORT_DETAILS ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int UNITS_PER_SIMD_WORD ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vect_dump ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

tree
FUNC8 (tree scalar_type)
{
  enum machine_mode inner_mode = FUNC2 (scalar_type);
  int nbytes = FUNC0 (inner_mode);
  int nunits;
  tree vectype;

  if (nbytes == 0 || nbytes >= UNITS_PER_SIMD_WORD)
    return NULL_TREE;

  /* FORNOW: Only a single vector size per target (UNITS_PER_SIMD_WORD)
     is expected.  */
  nunits = UNITS_PER_SIMD_WORD / nbytes;

  vectype = FUNC4 (scalar_type, nunits);
  if (FUNC7 (REPORT_DETAILS))
    {
      FUNC5 (vect_dump, "get vectype with %d units of type ", nunits);
      FUNC6 (vect_dump, scalar_type, TDF_SLIM);
    }

  if (!vectype)
    return NULL_TREE;

  if (FUNC7 (REPORT_DETAILS))
    {
      FUNC5 (vect_dump, "vectype: ");
      FUNC6 (vect_dump, vectype, TDF_SLIM);
    }

  if (!FUNC3 (FUNC2 (vectype))
      && !FUNC1 (FUNC2 (vectype)))
    {
      if (FUNC7 (REPORT_DETAILS))
        FUNC5 (vect_dump, "mode not supported by target.");
      return NULL_TREE;
    }

  return vectype;
}