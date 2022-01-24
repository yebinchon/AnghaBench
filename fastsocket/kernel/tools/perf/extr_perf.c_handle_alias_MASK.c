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
struct strbuf {char* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_MAX ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char const***,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (char const**,char const**,int) ; 
 int /*<<< orphan*/  FUNC8 (char const**,char const**,int) ; 
 char** FUNC9 (char const**,int) ; 
 int FUNC10 (char*,char const***) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char const*,char const*) ; 
 int FUNC15 (char*) ; 

__attribute__((used)) static int FUNC16(int *argcp, const char ***argv)
{
	int envchanged = 0, ret = 0, saved_errno = errno;
	int count, option_count;
	const char **new_argv;
	const char *alias_command;
	char *alias_string;

	alias_command = (*argv)[0];
	alias_string = FUNC2(alias_command);
	if (alias_string) {
		if (alias_string[0] == '!') {
			if (*argcp > 1) {
				struct strbuf buf;

				FUNC13(&buf, PATH_MAX);
				FUNC12(&buf, alias_string);
				FUNC11(&buf, (*argv) + 1, PATH_MAX);
				FUNC5(alias_string);
				alias_string = buf.buf;
			}
			ret = FUNC15(alias_string + 1);
			if (ret >= 0 && FUNC1(ret) &&
			    FUNC0(ret) != 127)
				FUNC4(FUNC0(ret));
			FUNC3("Failed to run '%s' when expanding alias '%s'",
			    alias_string + 1, alias_command);
		}
		count = FUNC10(alias_string, &new_argv);
		if (count < 0)
			FUNC3("Bad alias.%s string", alias_command);
		option_count = FUNC6(&new_argv, &count, &envchanged);
		if (envchanged)
			FUNC3("alias '%s' changes environment variables\n"
				 "You can use '!perf' in the alias to do this.",
				 alias_command);
		FUNC8(new_argv - option_count, new_argv,
				count * sizeof(char *));
		new_argv -= option_count;

		if (count < 1)
			FUNC3("empty alias for %s", alias_command);

		if (!FUNC14(alias_command, new_argv[0]))
			FUNC3("recursive alias: %s", alias_command);

		new_argv = FUNC9(new_argv, sizeof(char *) *
				    (count + *argcp + 1));
		/* insert after command name */
		FUNC7(new_argv + count, *argv + 1, sizeof(char *) * *argcp);
		new_argv[count + *argcp] = NULL;

		*argv = new_argv;
		*argcp += count - 1;

		ret = 1;
	}

	errno = saved_errno;

	return ret;
}