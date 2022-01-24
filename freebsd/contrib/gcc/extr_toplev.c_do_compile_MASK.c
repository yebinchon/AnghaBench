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
 int /*<<< orphan*/  TV_TOTAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  errorcount ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ flag_detailed_statistics ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  main_input_filename ; 
 int /*<<< orphan*/  no_backend ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  quiet_flag ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ time_report ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (void)
{
  /* Initialize timing first.  The C front ends read the main file in
     the post_options hook, and C++ does file timings.  */
  if (time_report || !quiet_flag  || flag_detailed_statistics)
    FUNC6 ();
  FUNC8 (TV_TOTAL);

  FUNC5 ();

  /* Don't do any more if an error has already occurred.  */
  if (!errorcount)
    {
      /* This must be run always, because it is needed to compute the FP
	 predefined macros, such as __LDBL_MAX__, for targets using non
	 default FP formats.  */
      FUNC3 ();

      /* Set up the back-end if requested.  */
      if (!no_backend)
	FUNC0 ();

      /* Language-dependent initialization.  Returns true on success.  */
      if (FUNC4 (main_input_filename))
	FUNC1 ();

      FUNC2 ();
    }

  /* Stop timing and print the times.  */
  FUNC9 (TV_TOTAL);
  FUNC7 (stderr);
}