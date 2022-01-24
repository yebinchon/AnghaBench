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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABITS ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,char*) ; 

void
FUNC2(char *fnm, mode_t mode)
{
	mode &= ABITS;
	if (FUNC0(fnm, mode) < 0)
		FUNC1(1, errno, "Could not set permissions on %s", fnm);
	return;
}