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
 int /*<<< orphan*/  CAP_ENDPTCOMPLETE ; 
 int /*<<< orphan*/  CAP_ENDPTFLUSH ; 
 int /*<<< orphan*/  CAP_ENDPTPRIME ; 
 int /*<<< orphan*/  CAP_ENDPTSETUPSTAT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(void)
{
	FUNC2(0);

	/* ESS flushes only at end?!? */
	FUNC1(CAP_ENDPTFLUSH,    ~0, ~0);   /* flush all EPs */

	/* clear setup token semaphores */
	FUNC1(CAP_ENDPTSETUPSTAT, 0,  0);   /* writes its content */

	/* clear complete status */
	FUNC1(CAP_ENDPTCOMPLETE,  0,  0);   /* writes its content */

	/* wait until all bits cleared */
	while (FUNC0(CAP_ENDPTPRIME, ~0))
		FUNC3(10);             /* not RTOS friendly */

	/* reset all endpoints ? */

	/* reset internal status and wait for further instructions
	   no need to verify the port reset status (ESS does it) */

	return 0;
}