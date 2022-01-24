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
typedef  enum warn_strict_overflow_code { ____Placeholder_warn_strict_overflow_code } warn_strict_overflow_code ;

/* Variables and functions */
 int /*<<< orphan*/  OPT_Wstrict_overflow ; 
 int /*<<< orphan*/  flag_trapv ; 
 int /*<<< orphan*/  flag_wrapv ; 
 int fold_deferred_overflow_code ; 
 char const* fold_deferred_overflow_warning ; 
 scalar_t__ fold_deferring_overflow_warnings ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static void
FUNC3 (const char* gmsgid, enum warn_strict_overflow_code wc)
{
  FUNC0 (!flag_wrapv && !flag_trapv);
  if (fold_deferring_overflow_warnings > 0)
    {
      if (fold_deferred_overflow_warning == NULL
	  || wc < fold_deferred_overflow_code)
	{
	  fold_deferred_overflow_warning = gmsgid;
	  fold_deferred_overflow_code = wc;
	}
    }
  else if (FUNC1 (wc))
    FUNC2 (OPT_Wstrict_overflow, "%s", gmsgid);
}