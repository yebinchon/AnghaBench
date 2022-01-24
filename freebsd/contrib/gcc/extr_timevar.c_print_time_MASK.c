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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,long,long,long) ; 
 long FUNC2 () ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC3 (const char *str, long total)
{
  long all_time = FUNC2 ();
  FUNC1 (stderr,
	   FUNC0("time in %s: %ld.%06ld (%ld%%)\n"),
	   str, total / 1000000, total % 1000000,
	   all_time == 0 ? 0
	   : (long) (((100.0 * (double) total) / (double) all_time) + .5));
}