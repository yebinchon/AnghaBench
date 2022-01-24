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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (scalar_t__) ; 

char *
FUNC4(const char *origname, const char *suffix)
{
	char *newname;

	newname = FUNC3(FUNC2(origname) + FUNC2(suffix) + 1);
	(void) FUNC1(newname, origname);
	(void) FUNC0(newname, suffix);
	return (newname);
}