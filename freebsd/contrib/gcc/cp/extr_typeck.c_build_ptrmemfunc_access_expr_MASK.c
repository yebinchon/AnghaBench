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
 int /*<<< orphan*/  COMPONENT_REF ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

tree
FUNC7 (tree ptrmem, tree member_name)
{
  tree ptrmem_type;
  tree member;
  tree member_type;

  /* This code is a stripped down version of
     build_class_member_access_expr.  It does not work to use that
     routine directly because it expects the object to be of class
     type.  */
  ptrmem_type = FUNC0 (ptrmem);
  FUNC5 (FUNC1 (ptrmem_type));
  member = FUNC6 (ptrmem_type, member_name, /*protect=*/0,
			  /*want_type=*/false);
  member_type = FUNC2 (FUNC0 (member),
					 FUNC3 (ptrmem_type));
  return FUNC4 (COMPONENT_REF, member_type,
		      ptrmem, member, NULL_TREE);
}