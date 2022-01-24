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
 char* JOB_TOKENS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t aborting ; 
 scalar_t__ jobTokensRunning ; 

void
FUNC2(void)
{
    jobTokensRunning--;
    if (jobTokensRunning < 0)
	FUNC1("token botch");
    if (jobTokensRunning || JOB_TOKENS[aborting] != '+')
	FUNC0();
}