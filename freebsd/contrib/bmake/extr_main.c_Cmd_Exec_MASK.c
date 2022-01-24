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
typedef  int /*<<< orphan*/  result ;
typedef  int /*<<< orphan*/  WAIT_T ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int EINTR ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const**) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 char* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int*) ; 
 int FUNC16 (int,char*,int) ; 
 char* shellName ; 
 int /*<<< orphan*/  shellPath ; 
 int FUNC17 () ; 
 int FUNC18 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

char *
FUNC19(const char *cmd, const char **errnum)
{
    const char	*args[4];   	/* Args for invoking the shell */
    int 	fds[2];	    	/* Pipe streams */
    int 	cpid;	    	/* Child PID */
    int 	pid;	    	/* PID from wait() */
    char	*res;		/* result */
    WAIT_T	status;		/* command exit status */
    Buffer	buf;		/* buffer to store the result */
    char	*cp;
    int		cc;		/* bytes read, or -1 */
    int		savederr;	/* saved errno */


    *errnum = NULL;

    if (!shellName)
	FUNC5();
    /*
     * Set up arguments for shell
     */
    args[0] = shellName;
    args[1] = "-c";
    args[2] = cmd;
    args[3] = NULL;

    /*
     * Open a pipe for fetching its output
     */
    if (FUNC15(fds) == -1) {
	*errnum = "Couldn't create pipe for \"%s\"";
	goto bad;
    }

    /*
     * Fork
     */
    switch (cpid = FUNC17()) {
    case 0:
	/*
	 * Close input side of pipe
	 */
	(void)FUNC12(fds[0]);

	/*
	 * Duplicate the output stream to the shell's output, then
	 * shut the extra thing down. Note we don't fetch the error
	 * stream...why not? Why?
	 */
	(void)FUNC13(fds[1], 1);
	(void)FUNC12(fds[1]);

	FUNC7();

	(void)FUNC14(shellPath, FUNC6(args));
	FUNC10(1);
	/*NOTREACHED*/

    case -1:
	*errnum = "Couldn't exec \"%s\"";
	goto bad;

    default:
	/*
	 * No need for the writing half
	 */
	(void)FUNC12(fds[1]);

	savederr = 0;
	FUNC2(&buf, 0);

	do {
	    char   result[BUFSIZ];
	    cc = FUNC16(fds[0], result, sizeof(result));
	    if (cc > 0)
		FUNC0(&buf, cc, result);
	}
	while (cc > 0 || (cc == -1 && errno == EINTR));
	if (cc == -1)
	    savederr = errno;

	/*
	 * Close the input side of the pipe.
	 */
	(void)FUNC12(fds[0]);

	/*
	 * Wait for the process to exit.
	 */
	while(((pid = FUNC18(cpid, &status, 0)) != cpid) && (pid >= 0)) {
	    FUNC4(pid, status, FALSE);
	    continue;
	}
	cc = FUNC3(&buf);
	res = FUNC1(&buf, FALSE);

	if (savederr != 0)
	    *errnum = "Couldn't read shell's output for \"%s\"";

	if (FUNC9(status))
	    *errnum = "\"%s\" exited on a signal";
	else if (FUNC8(status) != 0)
	    *errnum = "\"%s\" returned non-zero status";

	/*
	 * Null-terminate the result, convert newlines to spaces and
	 * install it in the variable.
	 */
	res[cc] = '\0';
	cp = &res[cc];

	if (cc > 0 && *--cp == '\n') {
	    /*
	     * A final newline is just stripped
	     */
	    *cp-- = '\0';
	}
	while (cp >= res) {
	    if (*cp == '\n') {
		*cp = ' ';
	    }
	    cp--;
	}
	break;
    }
    return res;
bad:
    res = FUNC11(1);
    *res = '\0';
    return res;
}