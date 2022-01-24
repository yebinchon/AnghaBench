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
 size_t PATH_MAX ; 
 scalar_t__ addr_last ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  sigactive ; 
 int sigflags ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 size_t FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int,scalar_t__) ; 

void
FUNC7(int signo)
{
	char *hup = NULL;		/* hup filename */
	char *s;
	char ed_hup[] = "ed.hup";
	size_t n;

	if (!sigactive)
		FUNC2(1);
	sigflags &= ~(1 << (signo - 1));
	if (addr_last && FUNC6(ed_hup, "w", 1, addr_last) < 0 &&
	    (s = FUNC0("HOME")) != NULL &&
	    (n = FUNC5(s)) + 8 <= PATH_MAX &&	/* "ed.hup" + '/' */
	    (hup = (char *) FUNC1(n + 10)) != NULL) {
		FUNC4(hup, s);
		if (hup[n - 1] != '/')
			hup[n] = '/', hup[n+1] = '\0';
		FUNC3(hup, "ed.hup");
		FUNC6(hup, "w", 1, addr_last);
	}
	FUNC2(2);
}