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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ STRING_CST ; 
 scalar_t__ TARGET_NO_SDATA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ ia64_section_threshold ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (char const*,char*,int) ; 

__attribute__((used)) static bool
FUNC7 (tree exp)
{
  if (TARGET_NO_SDATA)
    return false;

  /* We want to merge strings, so we never consider them small data.  */
  if (FUNC1 (exp) == STRING_CST)
    return false;

  /* Functions are never small data.  */
  if (FUNC1 (exp) == FUNCTION_DECL)
    return false;

  if (FUNC1 (exp) == VAR_DECL && FUNC0 (exp))
    {
      const char *section = FUNC2 (FUNC0 (exp));

      if (FUNC5 (section, ".sdata") == 0
	  || FUNC6 (section, ".sdata.", 7) == 0
	  || FUNC6 (section, ".gnu.linkonce.s.", 16) == 0
	  || FUNC5 (section, ".sbss") == 0
	  || FUNC6 (section, ".sbss.", 6) == 0
	  || FUNC6 (section, ".gnu.linkonce.sb.", 17) == 0)
	return true;
    }
  else
    {
      HOST_WIDE_INT size = FUNC4 (FUNC3 (exp));

      /* If this is an incomplete type with size 0, then we can't put it
	 in sdata because it might be too big when completed.  */
      if (size > 0 && size <= ia64_section_threshold)
	return true;
    }

  return false;
}