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

/* Variables and functions */
 scalar_t__ DINFO_LEVEL_NONE ; 
 scalar_t__ DINFO_LEVEL_NORMAL ; 
 scalar_t__ DINFO_LEVEL_VERBOSE ; 
 scalar_t__ debug_info_level ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ flag_caller_saves ; 
 scalar_t__ flag_test_coverage ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void
FUNC11 (void)
{
  FUNC4 (debug_info_level == DINFO_LEVEL_NORMAL
		  || debug_info_level == DINFO_LEVEL_VERBOSE
#ifdef VMS_DEBUGGING_INFO
		    /* Enable line number info for traceback.  */
		    || debug_info_level > DINFO_LEVEL_NONE
#endif
		    || flag_test_coverage);

  FUNC9 ();
  FUNC7 ();
  FUNC6 ();
  FUNC1 ();
  FUNC8 ();
  FUNC10 ();

  /* The following initialization functions need to generate rtl, so
     provide a dummy function context for them.  */
  FUNC3 ();
  FUNC5 ();
  if (flag_caller_saves)
    FUNC2 ();
  FUNC0 ();
}