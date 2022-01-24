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
 int PATH_MAX ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const**) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char** FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC12(const char *script, int argc, const char **argv)
{
	const char **command_line;
	char buf[PATH_MAX];
	int i, err = 0;
	FILE *fp;

	command_line = FUNC8((argc + 1) * sizeof(const char *));
	command_line[0] = script;
	for (i = 1; i < argc + 1; i++)
		command_line[i] = argv[i - 1];

	FUNC3();

	FUNC7();

	FUNC1(argc + 1, (char **)command_line);

	fp = FUNC4(script, "r");
	if (!fp) {
		FUNC11(buf, "Can't open python script \"%s\"", script);
		FUNC9(buf);
		err = -1;
		goto error;
	}

	err = FUNC0(fp, script);
	if (err) {
		FUNC5(stderr, "Error running python script %s\n", script);
		goto error;
	}

	err = FUNC10();
	if (err) {
		FUNC5(stderr, "Error starting python script %s\n", script);
		goto error;
	}

	FUNC6(command_line);

	return err;
error:
	FUNC2();
	FUNC6(command_line);

	return err;
}