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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 char* FUNC5 (scalar_t__) ; 

__attribute__((used)) static FILE *
FUNC6(const char *path, const char *fname)
{
	char *fn;
	FILE *fp;

	if (path == NULL)
		fn = FUNC2(fname);
	else {
		fn = FUNC5(FUNC4(path) + FUNC4(fname) + 2);
		FUNC3(fn, "%s/%s", path, fname);
	}
	fp = FUNC0(fn, "r");
	FUNC1(fn);
	return (fp);
}