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
struct smsm_shared {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ID_SHARED_STATE ; 
 int SMSM_RESET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct smsm_shared* FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(void)
{
	struct smsm_shared *smsm;

	smsm = FUNC1(ID_SHARED_STATE, 2 * sizeof(struct smsm_shared));

	/* if the modem's not ready yet, we have to hope for the best */
	if (!smsm)
		return 0;

	if (smsm[1].state & SMSM_RESET) {
		FUNC0();
		return -1;
	} else {
		return 0;
	}
}