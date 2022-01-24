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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char FUNC4 (char*) ; 
 char FUNC5 (char*) ; 
 char* curdir ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 char* FUNC7 (char**) ; 
 char* FUNC8 () ; 
 char* FUNC9 () ; 
 char* FUNC10 (char*) ; 

__attribute__((used)) static char *
FUNC11(char *dir)
{
	char *new;
	char *p;
	char *path;

	/*
	 * If our argument is NULL, we don't know the current directory
	 * any more because we traversed a symbolic link or something
	 * we couldn't stat().
	 */
	if (dir == NULL || curdir == NULL)
		return FUNC8();
	path = FUNC10(dir);
	FUNC1(new);
	if (*dir != '/') {
		FUNC3(curdir, new);
		if (FUNC4(new) == '/')
			FUNC5(new);
	}
	while ((p = FUNC7(&path)) != NULL) {
		if (FUNC6(p, "..")) {
			while (new > FUNC9() && (FUNC5(new), *new) != '/');
		} else if (*p != '\0' && ! FUNC6(p, ".")) {
			FUNC2('/', new);
			FUNC3(p, new);
		}
	}
	if (new == FUNC9())
		FUNC2('/', new);
	FUNC0(new);
	return FUNC9();
}