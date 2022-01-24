#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  instance; } ;
struct irlap_cb {TYPE_1__ notify; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  LOCK_NO_CHANGE ; 
#define  STATUS_NOISY 129 
#define  STATUS_NO_ACTIVITY 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC2(struct irlap_cb *self, int quality_of_link)
{
	switch (quality_of_link) {
	case STATUS_NO_ACTIVITY:
		FUNC0("IrLAP, no activity on link!\n");
		break;
	case STATUS_NOISY:
		FUNC0("IrLAP, noisy link!\n");
		break;
	default:
		break;
	}
	FUNC1(self->notify.instance,
				quality_of_link, LOCK_NO_CHANGE);
}