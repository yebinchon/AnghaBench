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
 int NSIG ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int sys_nsig ; 
 char** sys_signame ; 

__attribute__((used)) static int
FUNC4(char *sig)
{

	if (FUNC1(sig)) {
		int signo;

		signo = FUNC0(sig);
		return ((signo >= 0 && signo < NSIG) ? signo : (-1));
	} else if (FUNC2(sig, "EXIT") == 0) {
		return (0);
	} else {
		int n;

		if (FUNC3(sig, "SIG", 3) == 0)
			sig += 3;
		for (n = 1; n < sys_nsig; n++)
			if (sys_signame[n] &&
			    FUNC2(sys_signame[n], sig) == 0)
				return (n);
	}
	return (-1);
}