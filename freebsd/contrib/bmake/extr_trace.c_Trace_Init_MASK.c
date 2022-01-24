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
 int /*<<< orphan*/  VAR_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  trfile ; 
 int /*<<< orphan*/  trpid ; 
 int /*<<< orphan*/  trwd ; 

void
FUNC3(const char *pathname)
{
	char *p1;
	if (pathname != NULL) {
		trpid = FUNC2();
		trwd = FUNC0(".CURDIR", VAR_GLOBAL, &p1);

		trfile = FUNC1(pathname, "a");
	}
}