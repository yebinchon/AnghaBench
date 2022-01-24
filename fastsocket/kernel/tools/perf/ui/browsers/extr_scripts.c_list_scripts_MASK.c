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
 int SCRIPT_FULLPATH_LEN ; 
 int SCRIPT_MAX_NO ; 
 int SCRIPT_NAMELEN ; 
 int FUNC0 (char**,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (int,char**) ; 

__attribute__((used)) static int FUNC5(char *script_name)
{
	char *buf, *names[SCRIPT_MAX_NO], *paths[SCRIPT_MAX_NO];
	int i, num, choice, ret = -1;

	/* Preset the script name to SCRIPT_NAMELEN */
	buf = FUNC2(SCRIPT_MAX_NO * (SCRIPT_NAMELEN + SCRIPT_FULLPATH_LEN));
	if (!buf)
		return ret;

	for (i = 0; i < SCRIPT_MAX_NO; i++) {
		names[i] = buf + i * (SCRIPT_NAMELEN + SCRIPT_FULLPATH_LEN);
		paths[i] = names[i] + SCRIPT_NAMELEN;
	}

	num = FUNC0(names, paths);
	if (num > 0) {
		choice = FUNC4(num, names);
		if (choice < num && choice >= 0) {
			FUNC3(script_name, paths[choice]);
			ret = 0;
		}
	}

	FUNC1(buf);
	return ret;
}