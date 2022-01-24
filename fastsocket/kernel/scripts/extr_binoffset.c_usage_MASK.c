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
 char* VERSION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 

void FUNC2 (void)
{
	FUNC1 (stderr, "%s ver. %s\n", progname, VERSION);
	FUNC1 (stderr, "usage:  %s filename pattern_bytes\n",
			progname);
	FUNC1 (stderr, "        [prints location of pattern_bytes in file]\n");
	FUNC0 (1);
}