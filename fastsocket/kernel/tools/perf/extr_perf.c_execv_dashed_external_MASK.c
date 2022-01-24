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
 int /*<<< orphan*/  ENOENT ; 
 int ERR_RUN_COMMAND_EXEC ; 
 scalar_t__ FUNC0 (int) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static void FUNC6(const char **argv)
{
	struct strbuf cmd = STRBUF_INIT;
	const char *tmp;
	int status;

	FUNC4(&cmd, "perf-%s", argv[0]);

	/*
	 * argv[0] must be the perf command, but the argv array
	 * belongs to the caller, and may be reused in
	 * subsequent loop iterations. Save argv[0] and
	 * restore it on error.
	 */
	tmp = argv[0];
	argv[0] = cmd.buf;

	/*
	 * if we fail because the command is not found, it is
	 * OK to return. Otherwise, we just pass along the status code.
	 */
	status = FUNC3(argv, 0);
	if (status != -ERR_RUN_COMMAND_EXEC) {
		if (FUNC0(status))
			FUNC1("unable to run '%s'", argv[0]);
		FUNC2(-status);
	}
	errno = ENOENT; /* as if we called execvp */

	argv[0] = tmp;

	FUNC5(&cmd);
}