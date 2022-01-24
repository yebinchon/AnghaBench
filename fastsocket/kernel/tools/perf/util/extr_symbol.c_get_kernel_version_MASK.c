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
typedef  int /*<<< orphan*/  version ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*) ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 char* FUNC7 (char*,char const*) ; 

__attribute__((used)) static char *FUNC8(const char *root_dir)
{
	char version[PATH_MAX];
	FILE *file;
	char *name, *tmp;
	const char *prefix = "Linux version ";

	FUNC3(version, "%s/proc/version", root_dir);
	file = FUNC2(version, "r");
	if (!file)
		return NULL;

	version[0] = '\0';
	tmp = FUNC1(version, sizeof(version), file);
	FUNC0(file);

	name = FUNC7(version, prefix);
	if (!name)
		return NULL;
	name += FUNC6(prefix);
	tmp = FUNC4(name, ' ');
	if (tmp)
		*tmp = '\0';

	return FUNC5(name);
}