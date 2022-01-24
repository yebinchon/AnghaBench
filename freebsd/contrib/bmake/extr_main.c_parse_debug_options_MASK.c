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
 int /*<<< orphan*/  DEBUG_ARCH ; 
 int /*<<< orphan*/  DEBUG_COND ; 
 int /*<<< orphan*/  DEBUG_CWD ; 
 int /*<<< orphan*/  DEBUG_DIR ; 
 int /*<<< orphan*/  DEBUG_ERROR ; 
 int /*<<< orphan*/  DEBUG_FOR ; 
 int /*<<< orphan*/  DEBUG_GRAPH1 ; 
 int /*<<< orphan*/  DEBUG_GRAPH2 ; 
 int /*<<< orphan*/  DEBUG_GRAPH3 ; 
 int /*<<< orphan*/  DEBUG_JOB ; 
 int /*<<< orphan*/  DEBUG_LOUD ; 
 int /*<<< orphan*/  DEBUG_MAKE ; 
 int /*<<< orphan*/  DEBUG_META ; 
 int /*<<< orphan*/  DEBUG_PARSE ; 
 int /*<<< orphan*/  DEBUG_SCRIPT ; 
 int /*<<< orphan*/  DEBUG_SHELL ; 
 int /*<<< orphan*/  DEBUG_SUFF ; 
 int /*<<< orphan*/  DEBUG_TARG ; 
 int /*<<< orphan*/  DEBUG_VAR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  _IOLBF ; 
 int /*<<< orphan*/  _IONBF ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  debugVflag ; 
 scalar_t__ debug_file ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,int) ; 
 scalar_t__ stderr ; 
 scalar_t__ stdout ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 int FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void
FUNC12(const char *argvalue)
{
	const char *modules;
	const char *mode;
	char *fname;
	int len;

	for (modules = argvalue; *modules; ++modules) {
		switch (*modules) {
		case 'A':
			debug = ~0;
			break;
		case 'a':
			debug |= DEBUG_ARCH;
			break;
		case 'C':
			debug |= DEBUG_CWD;
			break;
		case 'c':
			debug |= DEBUG_COND;
			break;
		case 'd':
			debug |= DEBUG_DIR;
			break;
		case 'e':
			debug |= DEBUG_ERROR;
			break;
		case 'f':
			debug |= DEBUG_FOR;
			break;
		case 'g':
			if (modules[1] == '1') {
				debug |= DEBUG_GRAPH1;
				++modules;
			}
			else if (modules[1] == '2') {
				debug |= DEBUG_GRAPH2;
				++modules;
			}
			else if (modules[1] == '3') {
				debug |= DEBUG_GRAPH3;
				++modules;
			}
			break;
		case 'j':
			debug |= DEBUG_JOB;
			break;
		case 'l':
			debug |= DEBUG_LOUD;
			break;
		case 'M':
			debug |= DEBUG_META;
			break;
		case 'm':
			debug |= DEBUG_MAKE;
			break;
		case 'n':
			debug |= DEBUG_SCRIPT;
			break;
		case 'p':
			debug |= DEBUG_PARSE;
			break;
		case 's':
			debug |= DEBUG_SUFF;
			break;
		case 't':
			debug |= DEBUG_TARG;
			break;
		case 'V':
			debugVflag = TRUE;
			break;
		case 'v':
			debug |= DEBUG_VAR;
			break;
		case 'x':
			debug |= DEBUG_SHELL;
			break;
		case 'F':
			if (debug_file != stdout && debug_file != stderr)
				FUNC1(debug_file);
			if (*++modules == '+') {
				modules++;
				mode = "a";
			} else
				mode = "w";
			if (FUNC9(modules, "stdout") == 0) {
				debug_file = stdout;
				goto debug_setbuf;
			}
			if (FUNC9(modules, "stderr") == 0) {
				debug_file = stderr;
				goto debug_setbuf;
			}
			len = FUNC10(modules);
			fname = FUNC0(len + 20);
			FUNC6(fname, modules, len + 1);
			/* Let the filename be modified by the pid */
			if (FUNC9(fname + len - 3, ".%d") == 0)
				FUNC8(fname + len - 2, 20, "%d", FUNC5());
			debug_file = FUNC2(fname, mode);
			if (!debug_file) {
				FUNC3(stderr, "Cannot open debug file %s\n",
				    fname);
				FUNC11();
			}
			FUNC4(fname);
			goto debug_setbuf;
		default:
			(void)FUNC3(stderr,
			    "%s: illegal argument to d option -- %c\n",
			    progname, *modules);
			FUNC11();
		}
	}
debug_setbuf:
	/*
	 * Make the debug_file unbuffered, and make
	 * stdout line buffered (unless debugfile == stdout).
	 */
	FUNC7(debug_file, NULL, _IONBF, 0);
	if (debug_file != stdout) {
		FUNC7(stdout, NULL, _IOLBF, 0);
	}
}