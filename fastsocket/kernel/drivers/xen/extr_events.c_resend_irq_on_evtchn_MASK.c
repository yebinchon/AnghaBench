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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(unsigned int irq)
{
	int masked, evtchn = FUNC1(irq);
	struct shared_info *s = HYPERVISOR_shared_info;

	if (!FUNC0(evtchn))
		return 1;

	masked = FUNC3(evtchn, s->evtchn_mask);
	FUNC2(evtchn, s->evtchn_pending);
	if (!masked)
		FUNC4(evtchn);

	return 1;
}