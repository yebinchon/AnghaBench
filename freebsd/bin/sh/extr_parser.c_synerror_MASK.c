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
 char const* arg0 ; 
 scalar_t__ commandname ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  out2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  startlinno ; 

__attribute__((used)) static void
FUNC2(const char *msg)
{
	if (commandname)
		FUNC1(out2, "%s: %d: ", commandname, startlinno);
	else if (arg0)
		FUNC1(out2, "%s: ", arg0);
	FUNC1(out2, "Syntax error: %s\n", msg);
	FUNC0((char *)NULL);
}