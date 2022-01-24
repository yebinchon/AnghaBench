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
struct rfcomm_dlc {int /*<<< orphan*/  flags; int /*<<< orphan*/  v24_sig; int /*<<< orphan*/  cfc; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dlc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RFCOMM_MSC_PENDING ; 
 int /*<<< orphan*/  RFCOMM_SCHED_TX ; 
 int /*<<< orphan*/  RFCOMM_V24_FC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct rfcomm_dlc *d)
{
	FUNC0("dlc %p state %ld", d, d->state);

	if (!d->cfc) {
		d->v24_sig &= ~RFCOMM_V24_FC;
		FUNC2(RFCOMM_MSC_PENDING, &d->flags);
	}
	FUNC1(RFCOMM_SCHED_TX);
}