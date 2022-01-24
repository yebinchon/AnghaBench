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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  environ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,long,...) ; 
 long FUNC2 () ; 
 char* myname ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 long start_time ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (void)
{
#ifdef HAVE_SBRK
  char *lim = (char *) sbrk (0);
#endif
  long run_time = FUNC2 () - start_time;

  FUNC1 (stderr, FUNC0("%s: total time in assembly: %ld.%06ld\n"),
	   myname, run_time / 1000000, run_time % 1000000);
#ifdef HAVE_SBRK
  fprintf (stderr, _("%s: data size %ld\n"),
	   myname, (long) (lim - (char *) &environ));
#endif

  FUNC6 (stderr);
  FUNC9 (stderr);
  FUNC7 (stderr);
  FUNC4 (stderr);

#ifdef tc_print_statistics
  tc_print_statistics (stderr);
#endif

#ifdef obj_print_statistics
  obj_print_statistics (stderr);
#endif
}