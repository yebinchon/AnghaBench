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
typedef  scalar_t__ base_kind ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ba_check ; 
 int /*<<< orphan*/  ba_unique ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ bk_ambig ; 
 scalar_t__ bk_inaccessible ; 
 scalar_t__ bk_via_virtual ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ integer_zero_node ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  ptrdiff_type_node ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  size_zero_node ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC11 (tree from, tree to,
		      bool allow_inverse_p,
		      bool c_cast_p)
{
  tree binfo;
  base_kind kind;
  tree result;

  /* Assume no conversion is required.  */
  result = integer_zero_node;
  binfo = FUNC7 (to, from, c_cast_p ? ba_unique : ba_check, &kind);
  if (kind == bk_inaccessible || kind == bk_ambig)
    FUNC4 ("   in pointer to member function conversion");
  else if (binfo)
    {
      if (kind != bk_via_virtual)
	result = FUNC0 (binfo);
      else
	{
	  tree virt_binfo = FUNC2 (binfo);

	  /* This is a reinterpret cast, we choose to do nothing.  */
	  if (allow_inverse_p)
	    FUNC10 (0, "pointer to member cast via virtual base %qT",
		     FUNC1 (virt_binfo));
	  else
	    FUNC4 ("pointer to member conversion via virtual base %qT",
		   FUNC1 (virt_binfo));
	}
    }
  else if (FUNC8 (from, to))
    /* Pointer to member of incomplete class is permitted*/;
  else if (!allow_inverse_p)
    {
      FUNC5 (from, to);
      FUNC4 ("   in pointer to member conversion");
    }
  else
    {
      binfo = FUNC7 (from, to, c_cast_p ? ba_unique : ba_check, &kind);
      if (binfo)
	{
	  if (kind != bk_via_virtual)
	    result = FUNC9 (size_zero_node, FUNC0 (binfo));
	  else
	    {
	      /* This is a reinterpret cast, we choose to do nothing.  */
	      tree virt_binfo = FUNC2 (binfo);

	      FUNC10 (0, "pointer to member cast via virtual base %qT",
		       FUNC1 (virt_binfo));
	    }
	}
    }

  return FUNC6 (FUNC3 (ptrdiff_type_node,
						      result));
}