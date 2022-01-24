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
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char const*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VARF_WANTRES ; 
 int /*<<< orphan*/  VAR_CMD ; 
 int /*<<< orphan*/  VAR_GLOBAL ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char) ; 

__attribute__((used)) static Boolean
FUNC5(const char *var, const char *suffix)
{
	char *p, *path, *xpath;

	if ((path = FUNC2(var, VAR_CMD, &p)) == NULL ||
	    *path == '\0')
		return FALSE;

	/* expand variable substitutions */
	if (FUNC4(path, '$') != 0)
		xpath = FUNC1(NULL, path, VAR_GLOBAL, VARF_WANTRES);
	else
		xpath = path;

	(void)FUNC0("%s%s", xpath, suffix);

	if (xpath != path)
		FUNC3(xpath);
	FUNC3(p);
	return TRUE;
}