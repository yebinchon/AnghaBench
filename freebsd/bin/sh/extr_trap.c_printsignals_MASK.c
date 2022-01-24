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
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int sys_nsig ; 
 int* sys_signame ; 

__attribute__((used)) static void
FUNC4(void)
{
	int n, outlen;

	outlen = 0;
	for (n = 1; n < sys_nsig; n++) {
		if (sys_signame[n]) {
			FUNC1("%s", sys_signame[n]);
			outlen += FUNC3(sys_signame[n]);
		} else {
			FUNC1("%d", n);
			outlen += 3;	/* good enough */
		}
		++outlen;
		if (outlen > 71 || n == sys_nsig - 1) {
			FUNC2("\n");
			outlen = 0;
		} else {
			FUNC0(' ');
		}
	}
}