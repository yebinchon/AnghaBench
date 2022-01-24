#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct acm {int rx_buflimit; TYPE_3__* control; TYPE_2__* ru; TYPE_1__* wb; int /*<<< orphan*/  ctrlurb; scalar_t__ dev; int /*<<< orphan*/  drain_wait; scalar_t__ ctrlout; } ;
struct TYPE_7__ {scalar_t__ needs_remote_wakeup; } ;
struct TYPE_6__ {int /*<<< orphan*/  urb; } ;
struct TYPE_5__ {int /*<<< orphan*/  urb; } ;

/* Variables and functions */
 int ACM_CLOSE_TIMEOUT ; 
 int ACM_NW ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct acm*,scalar_t__) ; 
 int FUNC1 (struct acm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  open_mutex ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC8(struct acm *acm, int drain)
{
	int i, nr = acm->rx_buflimit;
	FUNC2(&open_mutex);
	if (acm->dev) {
		FUNC4(acm->control);
		FUNC0(acm, acm->ctrlout = 0);
		/* try letting the last writes drain naturally */
		if (drain) {
			FUNC7(acm->drain_wait,
				(ACM_NW == FUNC1(acm)) || !acm->dev,
					ACM_CLOSE_TIMEOUT * HZ);
		}
		FUNC6(acm->ctrlurb);
		for (i = 0; i < ACM_NW; i++)
			FUNC6(acm->wb[i].urb);
		for (i = 0; i < nr; i++)
			FUNC6(acm->ru[i].urb);
		acm->control->needs_remote_wakeup = 0;
		FUNC5(acm->control);
	}
	FUNC3(&open_mutex);
}