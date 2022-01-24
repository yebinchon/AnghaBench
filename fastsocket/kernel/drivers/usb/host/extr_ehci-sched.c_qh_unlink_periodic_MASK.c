#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * ptr; } ;
struct ehci_qh {unsigned int period; unsigned int start; int usecs; int c_usecs; TYPE_4__ qh_next; int /*<<< orphan*/  qh_state; TYPE_3__* hw; TYPE_2__* dev; } ;
struct ehci_hcd {unsigned int periodic_size; } ;
struct TYPE_6__ {int bandwidth_allocated; } ;
struct TYPE_10__ {TYPE_1__ self; } ;
struct TYPE_8__ {int /*<<< orphan*/  hw_info2; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int QH_CMASK ; 
 int QH_SMASK ; 
 int /*<<< orphan*/  QH_STATE_UNLINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,struct ehci_qh*,unsigned int,int,int) ; 
 int FUNC1 (struct ehci_hcd*) ; 
 TYPE_5__* FUNC2 (struct ehci_hcd*) ; 
 int FUNC3 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ehci_hcd*,unsigned int,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_qh*) ; 

__attribute__((used)) static int FUNC6(struct ehci_hcd *ehci, struct ehci_qh *qh)
{
	unsigned	i;
	unsigned	period;

	// FIXME:
	// IF this isn't high speed
	//   and this qh is active in the current uframe
	//   (and overlay token SplitXstate is false?)
	// THEN
	//   qh->hw_info1 |= cpu_to_hc32(1 << 7 /* "ignore" */);

	/* high bandwidth, or otherwise part of every microframe */
	if ((period = qh->period) == 0)
		period = 1;

	for (i = qh->start; i < ehci->periodic_size; i += period)
		FUNC4 (ehci, i, qh);

	/* update per-qh bandwidth for usbfs */
	FUNC2(ehci)->self.bandwidth_allocated -= qh->period
		? ((qh->usecs + qh->c_usecs) / qh->period)
		: (qh->usecs * 8);

	FUNC0 (&qh->dev->dev,
		"unlink qh%d-%04x/%p start %d [%d/%d us]\n",
		qh->period,
		FUNC3(ehci, &qh->hw->hw_info2) & (QH_CMASK | QH_SMASK),
		qh, qh->start, qh->usecs, qh->c_usecs);

	/* qh->qh_next still "live" to HC */
	qh->qh_state = QH_STATE_UNLINK;
	qh->qh_next.ptr = NULL;
	FUNC5 (qh);

	/* maybe turn off periodic schedule */
	return FUNC1(ehci);
}