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
typedef  int /*<<< orphan*/  cxx_pretty_printer ;

/* Variables and functions */
 int const BOUND_TEMPLATE_TEMPLATE_PARM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int const TEMPLATE_TEMPLATE_PARM ; 
 int const TEMPLATE_TYPE_PARM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 

void
FUNC9 (cxx_pretty_printer *pp, tree parm)
{
  const enum tree_code code = FUNC3 (parm);

  /* Brings type template parameters to the canonical forms.  */
  if (code == TEMPLATE_TYPE_PARM || code == TEMPLATE_TEMPLATE_PARM
      || code == BOUND_TEMPLATE_TEMPLATE_PARM)
    parm = FUNC2 (parm);

  FUNC4 (pp);
  FUNC6 (pp, "template-parameter-");
  FUNC8 (pp, FUNC1 (parm));
  FUNC7 (pp);
  FUNC8 (pp, FUNC0 (parm) + 1);
  FUNC5 (pp);
}