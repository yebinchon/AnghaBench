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
 int /*<<< orphan*/  C_NOINFO ; 
 int /*<<< orphan*/  C_NOXFER ; 
 int /*<<< orphan*/  C_PROGRESS ; 
 int /*<<< orphan*/  ddflags ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static void
FUNC2(char *arg)
{

	if (FUNC1(arg, "none") == 0)
		ddflags |= C_NOINFO;
	else if (FUNC1(arg, "noxfer") == 0)
		ddflags |= C_NOXFER;
	else if (FUNC1(arg, "progress") == 0)
		ddflags |= C_PROGRESS;
	else
		FUNC0(1, "unknown status %s", arg);
}