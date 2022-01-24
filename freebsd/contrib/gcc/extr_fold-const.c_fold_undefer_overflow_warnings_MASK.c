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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  OPT_Wstrict_overflow ; 
 int fold_deferred_overflow_code ; 
 char* fold_deferred_overflow_warning ; 
 scalar_t__ fold_deferring_overflow_warnings ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  input_location ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char const*) ; 

void
FUNC5 (bool issue, tree stmt, int code)
{
  const char *warnmsg;
  location_t locus;

  FUNC2 (fold_deferring_overflow_warnings > 0);
  --fold_deferring_overflow_warnings;
  if (fold_deferring_overflow_warnings > 0)
    {
      if (fold_deferred_overflow_warning != NULL
	  && code != 0
	  && code < (int) fold_deferred_overflow_code)
	fold_deferred_overflow_code = code;
      return;
    }

  warnmsg = fold_deferred_overflow_warning;
  fold_deferred_overflow_warning = NULL;

  if (!issue || warnmsg == NULL)
    return;

  /* Use the smallest code level when deciding to issue the
     warning.  */
  if (code == 0 || code > (int) fold_deferred_overflow_code)
    code = fold_deferred_overflow_code;

  if (!FUNC3 (code))
    return;

  if (stmt == NULL_TREE || !FUNC0 (stmt))
    locus = input_location;
  else
    locus = FUNC1 (stmt);
  FUNC4 (OPT_Wstrict_overflow, "%H%s", &locus, warnmsg);
}