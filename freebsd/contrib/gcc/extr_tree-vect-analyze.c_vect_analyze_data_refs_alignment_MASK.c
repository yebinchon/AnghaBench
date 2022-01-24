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
typedef  int /*<<< orphan*/  loop_vec_info ;

/* Variables and functions */
 int /*<<< orphan*/  REPORT_DETAILS ; 
 int /*<<< orphan*/  REPORT_UNVECTORIZED_LOOPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vect_dump ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3 (loop_vec_info loop_vinfo)
{
  if (FUNC2 (REPORT_DETAILS))
    FUNC0 (vect_dump, "=== vect_analyze_data_refs_alignment ===");

  if (!FUNC1 (loop_vinfo))
    {
      if (FUNC2 (REPORT_UNVECTORIZED_LOOPS))
	FUNC0 (vect_dump, 
		 "not vectorized: can't calculate alignment for data ref.");
      return false;
    }

  return true;
}