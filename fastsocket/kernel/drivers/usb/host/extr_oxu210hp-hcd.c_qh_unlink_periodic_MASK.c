#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct oxu_hcd {unsigned int periodic_size; int /*<<< orphan*/  periodic_sched; } ;
struct TYPE_7__ {int /*<<< orphan*/ * ptr; } ;
struct ehci_qh {unsigned int period; unsigned int start; int usecs; int c_usecs; TYPE_3__ qh_next; int /*<<< orphan*/  qh_state; int /*<<< orphan*/  hw_info2; TYPE_2__* dev; } ;
struct TYPE_5__ {int bandwidth_allocated; } ;
struct TYPE_8__ {TYPE_1__ self; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int QH_CMASK ; 
 int QH_SMASK ; 
 int /*<<< orphan*/  QH_STATE_UNLINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,struct ehci_qh*,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct oxu_hcd*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 (struct oxu_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct oxu_hcd*,unsigned int,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_qh*) ; 

__attribute__((used)) static void FUNC6(struct oxu_hcd *oxu, struct ehci_qh *qh)
{
	unsigned i;
	unsigned period;

	/* FIXME:
	 *   IF this isn't high speed
	 *   and this qh is active in the current uframe
	 *   (and overlay token SplitXstate is false?)
	 * THEN
	 *   qh->hw_info1 |= cpu_to_le32(1 << 7 "ignore");
	 */

	/* high bandwidth, or otherwise part of every microframe */
	period = qh->period;
	if (period == 0)
		period = 1;

	for (i = qh->start; i < oxu->periodic_size; i += period)
		FUNC4(oxu, i, qh);

	/* update per-qh bandwidth for usbfs */
	FUNC3(oxu)->self.bandwidth_allocated -= qh->period
		? ((qh->usecs + qh->c_usecs) / qh->period)
		: (qh->usecs * 8);

	FUNC0(&qh->dev->dev,
		"unlink qh%d-%04x/%p start %d [%d/%d us]\n",
		qh->period,
		FUNC2(&qh->hw_info2) & (QH_CMASK | QH_SMASK),
		qh, qh->start, qh->usecs, qh->c_usecs);

	/* qh->qh_next still "live" to HC */
	qh->qh_state = QH_STATE_UNLINK;
	qh->qh_next.ptr = NULL;
	FUNC5(qh);

	/* maybe turn off periodic schedule */
	oxu->periodic_sched--;
	if (!oxu->periodic_sched)
		(void) FUNC1(oxu);
}