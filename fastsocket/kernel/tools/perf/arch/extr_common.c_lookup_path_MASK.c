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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 int PATH_MAX ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char*,char*,char**) ; 

__attribute__((used)) static bool FUNC6(char *name)
{
	bool found = false;
	char *path, *tmp;
	char buf[PATH_MAX];
	char *env = FUNC2("PATH");

	if (!env)
		return false;

	env = FUNC4(env);
	if (!env)
		return false;

	path = FUNC5(env, ":", &tmp);
	while (path) {
		FUNC3(buf, sizeof(buf), "%s/%s", path, name);
		if (FUNC0(buf, F_OK) == 0) {
			found = true;
			break;
		}
		path = FUNC5(NULL, ":", &tmp);
	}
	FUNC1(env);
	return found;
}