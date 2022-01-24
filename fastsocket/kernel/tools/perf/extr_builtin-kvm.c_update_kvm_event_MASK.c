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
typedef  int /*<<< orphan*/  u64 ;
struct kvm_event {int /*<<< orphan*/ * vcpu; int /*<<< orphan*/  total; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_event*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct kvm_event *event, int vcpu_id,
			     u64 time_diff)
{
	if (vcpu_id == -1) {
		FUNC1(&event->total, time_diff);
		return true;
	}

	if (!FUNC0(event, vcpu_id))
		return false;

	FUNC1(&event->vcpu[vcpu_id], time_diff);
	return true;
}