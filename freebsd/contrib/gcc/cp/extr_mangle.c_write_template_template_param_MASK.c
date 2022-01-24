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
 scalar_t__ BOUND_TEMPLATE_TEMPLATE_PARM ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__ const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__ const) ; 

__attribute__((used)) static void
FUNC6 (const tree parm)
{
  tree template = NULL_TREE;

  /* PARM, a TEMPLATE_TEMPLATE_PARM, is an instantiation of the
     template template parameter.  The substitution candidate here is
     only the template.  */
  if (FUNC2 (parm) == BOUND_TEMPLATE_TEMPLATE_PARM)
    {
      template
	= FUNC1 (FUNC0 (parm));
      if (FUNC4 (template))
	return;
    }

  /* <template-param> encodes only the template parameter position,
     not its template arguments, which is fine here.  */
  FUNC5 (parm);
  if (template)
    FUNC3 (template);
}