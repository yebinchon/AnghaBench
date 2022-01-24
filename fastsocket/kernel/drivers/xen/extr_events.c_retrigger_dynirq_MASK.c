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
struct shared_info {int /*<<< orphan*/  evtchn_pending; int /*<<< orphan*/  evtchn_mask; } ;

/* Variables and functions */
 struct shared_info* HYPERVISOR_shared_info ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(unsigned int irq)
{
	int evtchn = FUNC1(irq);
	struct shared_info *sh = HYPERVISOR_shared_info;
	int ret = 0;

	if (FUNC0(evtchn)) {
		int masked;

		masked = FUNC3(evtchn, sh->evtchn_mask);
		FUNC2(evtchn, sh->evtchn_pending);
		if (!masked)
			FUNC4(evtchn);
		ret = 1;
	}

	return ret;
}