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
typedef  int /*<<< orphan*/  location_t ;
typedef  enum warn_strict_overflow_code { ____Placeholder_warn_strict_overflow_code } warn_strict_overflow_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  OPT_Wstrict_overflow ; 
 int WARN_STRICT_OVERFLOW_COMPARISON ; 
 int WARN_STRICT_OVERFLOW_CONDITIONAL ; 
 int /*<<< orphan*/  input_location ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char const*) ; 

tree
FUNC7 (tree cond, tree stmt)
{
  bool sop;
  tree ret;

  sop = false;
  ret = FUNC5 (cond, true, &sop);

  if (ret && sop)
    {
      enum warn_strict_overflow_code wc;
      const char* warnmsg;

      if (FUNC3 (ret))
	{
	  wc = WARN_STRICT_OVERFLOW_CONDITIONAL;
	  warnmsg = FUNC2("assuming signed overflow does not occur when "
		       "simplifying conditional to constant");
	}
      else
	{
	  wc = WARN_STRICT_OVERFLOW_COMPARISON;
	  warnmsg = FUNC2("assuming signed overflow does not occur when "
		       "simplifying conditional");
	}

      if (FUNC4 (wc))
	{
	  location_t locus;

	  if (!FUNC0 (stmt))
	    locus = input_location;
	  else
	    locus = FUNC1 (stmt);
	  FUNC6 (OPT_Wstrict_overflow, "%H%s", &locus, warnmsg);
	}
    }

  return ret;
}