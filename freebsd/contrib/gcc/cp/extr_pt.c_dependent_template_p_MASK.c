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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ IDENTIFIER_NODE ; 
 scalar_t__ OVERLOAD ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ SCOPE_REF ; 
 scalar_t__ TEMPLATE_TEMPLATE_PARM ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

bool
FUNC8 (tree tmpl)
{
  if (FUNC5 (tmpl) == OVERLOAD)
    {
      while (tmpl)
	{
	  if (FUNC8 (FUNC4 (tmpl)))
	    return true;
	  tmpl = FUNC3 (tmpl);
	}
      return false;
    }

  /* Template template parameters are dependent.  */
  if (FUNC2 (tmpl)
      || FUNC5 (tmpl) == TEMPLATE_TEMPLATE_PARM)
    return true;
  /* So are names that have not been looked up.  */
  if (FUNC5 (tmpl) == SCOPE_REF
      || FUNC5 (tmpl) == IDENTIFIER_NODE)
    return true;
  /* So are member templates of dependent classes.  */
  if (FUNC6 (FUNC0 (tmpl)))
    return FUNC7 (FUNC1 (tmpl));
  return false;
}