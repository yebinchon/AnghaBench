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
 int /*<<< orphan*/  FP_PE ; 
 scalar_t__ RD_OK ; 
 int /*<<< orphan*/  _dtrace_debug ; 
 scalar_t__ _dtrace_rdvers ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

void
FUNC3(void)
{
	_dtrace_debug = FUNC1("DTRACE_DEBUG") != NULL;

	for (; _dtrace_rdvers > 0; _dtrace_rdvers--) {
		if (FUNC2(_dtrace_rdvers) == RD_OK)
			break;
	}
#if defined(__i386__)
	/* make long doubles 64 bits -sson */
	(void) fpsetprec(FP_PE);
#endif
}