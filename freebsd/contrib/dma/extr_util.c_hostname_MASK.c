#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {char* mailname; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_NAME_MAX ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,...) ; 
 scalar_t__ FUNC6 (char*,char) ; 

const char *
FUNC7(void)
{
#ifndef HOST_NAME_MAX
#define HOST_NAME_MAX	255
#endif
	static char name[HOST_NAME_MAX+1];
	static int initialized = 0;
	char *s;

	if (initialized)
		return (name);

	if (config.mailname == NULL || !*config.mailname)
		goto local;

	if (config.mailname[0] == '/') {
		/*
		 * If the mailname looks like an absolute path,
		 * treat it as a file.
		 */
		FILE *fp;

		fp = FUNC2(config.mailname, "r");
		if (fp == NULL)
			goto local;

		s = FUNC1(name, sizeof(name), fp);
		FUNC0(fp);
		if (s == NULL)
			goto local;

		for (s = name; *s != 0 && (FUNC4(*s) || FUNC6("_.-", *s)); ++s)
			/* NOTHING */;
		*s = 0;

		if (!*name)
			goto local;

		initialized = 1;
		return (name);
	} else {
		FUNC5(name, sizeof(name), "%s", config.mailname);
		initialized = 1;
		return (name);
	}

local:
	if (FUNC3(name, sizeof(name)) != 0)
		*name = 0;
	/*
	 * gethostname() is allowed to truncate name without NUL-termination
	 * and at the same time not return an error.
	 */
	name[sizeof(name) - 1] = 0;

	for (s = name; *s != 0 && (FUNC4(*s) || FUNC6("_.-", *s)); ++s)
		/* NOTHING */;
	*s = 0;

	if (!*name)
		FUNC5(name, sizeof(name), "unknown-hostname");

	initialized = 1;
	return (name);
}