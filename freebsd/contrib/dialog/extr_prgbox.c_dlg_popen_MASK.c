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
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char** FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char**) ; 
 int /*<<< orphan*/ * FUNC5 (int,char const*) ; 
 int FUNC6 () ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

FILE *
FUNC11(const char *command, const char *type)
{
    FILE *result = 0;
    int fd[2];
    char *blob;
    char **argv;

    if ((*type == 'r' || *type != 'w') && FUNC8(fd) == 0) {
	switch (FUNC6()) {
	case -1:		/* Error. */
	    (void) FUNC1(fd[0]);
	    (void) FUNC1(fd[1]);
	    break;
	case 0:		/* child. */
	    if (*type == 'r') {
		if (fd[1] != STDOUT_FILENO) {
		    (void) FUNC3(fd[1], STDOUT_FILENO);
		    (void) FUNC1(fd[1]);
		}
		(void) FUNC3(STDOUT_FILENO, STDERR_FILENO);
		(void) FUNC1(fd[0]);
	    } else {
		if (fd[0] != STDIN_FILENO) {
		    (void) FUNC3(fd[0], STDIN_FILENO);
		    (void) FUNC1(fd[0]);
		}
		(void) FUNC1(fd[1]);
		(void) FUNC1(STDERR_FILENO);
	    }
	    /*
	     * Bourne shell needs "-c" option to force it to use only the
	     * given command.  Also, it needs the command to be parsed into
	     * tokens.
	     */
	    if ((blob = FUNC7(10 + FUNC10(command))) != 0) {
		FUNC9(blob, "sh -c \"%s\"", command);
		argv = FUNC2(blob);
		FUNC4("sh", argv);
	    }
	    FUNC0(127);
	    /* NOTREACHED */
	default:		/* parent */
	    if (*type == 'r') {
		result = FUNC5(fd[0], type);
		(void) FUNC1(fd[1]);
	    } else {
		result = FUNC5(fd[1], type);
		(void) FUNC1(fd[0]);
	    }
	    break;
	}
    }

    return result;
}