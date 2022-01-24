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
struct stat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (char*) ; 
 char* FUNC7 (char**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int
FUNC12(char *dest)
{
	char *p;
	char *q;
	char *component;
	char *path;
	struct stat statb;
	int first;
	int badstat;

	/*
	 *  Check each component of the path. If we find a symlink or
	 *  something we can't stat, clear curdir to force a getcwd()
	 *  next time we get the value of the current directory.
	 */
	badstat = 0;
	path = FUNC10(dest);
	FUNC1(p);
	if (*dest == '/') {
		FUNC2('/', p);
		path++;
	}
	first = 1;
	while ((q = FUNC7(&path)) != NULL) {
		if (q[0] == '\0' || (q[0] == '.' && q[1] == '\0'))
			continue;
		if (! first)
			FUNC2('/', p);
		first = 0;
		component = q;
		FUNC3(q, p);
		if (FUNC5(component, ".."))
			continue;
		FUNC0(p);
		if (FUNC8(FUNC9(), &statb) < 0) {
			badstat = 1;
			break;
		}
	}

	INTOFF;
	if ((p = FUNC6(badstat ? NULL : dest)) == NULL || FUNC4(p) < 0) {
		INTON;
		return (-1);
	}
	FUNC11(p);
	INTON;
	return (0);
}