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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool
FUNC5 (tree type, tree orig_type,
		   tree *case_low_p, tree *case_high_p)
{
  tree min_value, max_value;
  tree case_low = *case_low_p;
  tree case_high = case_high_p ? *case_high_p : case_low;

  /* If there was a problem with the original type, do nothing.  */
  if (orig_type == error_mark_node)
    return true;

  min_value = FUNC1 (orig_type);
  max_value = FUNC0 (orig_type);

  /* Case label is less than minimum for type.  */
  if (FUNC3 (case_low, min_value) < 0
      && FUNC3 (case_high, min_value) < 0)
    {
      FUNC4 (0, "case label value is less than minimum value for type");
      return false;
    }

  /* Case value is greater than maximum for type.  */
  if (FUNC3 (case_low, max_value) > 0
      && FUNC3 (case_high, max_value) > 0)
    {
      FUNC4 (0, "case label value exceeds maximum value for type");
      return false;
    }

  /* Saturate lower case label value to minimum.  */
  if (FUNC3 (case_high, min_value) >= 0
      && FUNC3 (case_low, min_value) < 0)
    {
      FUNC4 (0, "lower value in case label range"
	       " less than minimum value for type");
      case_low = min_value;
    }

  /* Saturate upper case label value to maximum.  */
  if (FUNC3 (case_low, max_value) <= 0
      && FUNC3 (case_high, max_value) > 0)
    {
      FUNC4 (0, "upper value in case label range"
	       " exceeds maximum value for type");
      case_high = max_value;
    }

  if (*case_low_p != case_low)
    *case_low_p = FUNC2 (type, case_low);
  if (case_high_p && *case_high_p != case_high)
    *case_high_p = FUNC2 (type, case_high);

  return true;
}