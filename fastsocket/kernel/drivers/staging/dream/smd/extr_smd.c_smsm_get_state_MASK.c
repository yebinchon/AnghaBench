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
typedef  int uint32_t ;
struct smsm_shared {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ID_SHARED_STATE ; 
 int SMSM_RESET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct smsm_shared* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  smem_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

uint32_t FUNC5(void)
{
	unsigned long flags;
	struct smsm_shared *smsm;
	uint32_t rv;

	FUNC3(&smem_lock, flags);

	smsm = FUNC2(ID_SHARED_STATE,
			  2 * sizeof(struct smsm_shared));

	if (smsm)
		rv = smsm[1].state;
	else
		rv = 0;

	if (rv & SMSM_RESET)
		FUNC0();

	FUNC4(&smem_lock, flags);

	if (smsm == NULL)
		FUNC1("smsm_get_state <SM NO STATE>\n");
	return rv;
}