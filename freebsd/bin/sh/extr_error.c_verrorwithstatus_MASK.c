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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int /*<<< orphan*/  EXERROR ; 
 int /*<<< orphan*/  FORCEINTON ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int exitstatus ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(int status, const char *msg, va_list ap)
{
	/*
	 * An interrupt trumps an error.  Certain places catch error
	 * exceptions or transform them to a plain nonzero exit code
	 * in child processes, and if an error exception can be handled,
	 * an interrupt can be handled as well.
	 *
	 * exraise() will disable interrupts for the exception handler.
	 */
	FORCEINTON;

#ifdef DEBUG
	if (msg)
		TRACE(("verrorwithstatus(%d, \"%s\") pid=%d\n",
		    status, msg, getpid()));
	else
		TRACE(("verrorwithstatus(%d, NULL) pid=%d\n",
		    status, getpid()));
#endif
	if (msg)
		FUNC4(msg, ap);
	FUNC2();
	exitstatus = status;
	FUNC1(EXERROR);
}