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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static void
FUNC3(void)
{
	char *p;
	if ((p = FUNC2(progname, '[')) != NULL)
	    *p = '\0';

	(void)FUNC1(stderr,
"usage: %s [-BeikNnqrstWwX] \n\
            [-C directory] [-D variable] [-d flags] [-f makefile]\n\
            [-I directory] [-J private] [-j max_jobs] [-m directory] [-T file]\n\
            [-V variable] [-v variable] [variable=value] [target ...]\n",
	    progname);
	FUNC0(2);
}