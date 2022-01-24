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
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CM_MEDIUM ; 
 scalar_t__ CM_MEDIUM_PIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ ix86_cmodel ; 
 scalar_t__ ix86_section_threshold ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static bool
FUNC6 (tree exp)
{
  if (ix86_cmodel != CM_MEDIUM && ix86_cmodel != CM_MEDIUM_PIC)
    return false;

  /* Functions are never large data.  */
  if (FUNC1 (exp) == FUNCTION_DECL)
    return false;

  if (FUNC1 (exp) == VAR_DECL && FUNC0 (exp))
    {
      const char *section = FUNC2 (FUNC0 (exp));
      if (FUNC5 (section, ".ldata") == 0
	  || FUNC5 (section, ".lbss") == 0)
	return true;
      return false;
    }
  else
    {
      HOST_WIDE_INT size = FUNC4 (FUNC3 (exp));

      /* If this is an incomplete type with size 0, then we can't put it
	 in data because it might be too big when completed.  */
      if (!size || size > ix86_section_threshold)
	return true;
    }

  return false;
}