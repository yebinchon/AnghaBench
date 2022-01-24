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
struct wahc {size_t nep_buffer_size; int /*<<< orphan*/  notifs_queued; int /*<<< orphan*/  nep_buffer; TYPE_1__* usb_iface; } ;
struct wa_notif_work {size_t size; int /*<<< orphan*/  work; int /*<<< orphan*/  data; int /*<<< orphan*/  wa; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct wa_notif_work* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct wahc*) ; 
 int /*<<< orphan*/  wa_notif_dispatch ; 
 int /*<<< orphan*/  wusbd ; 

__attribute__((used)) static int FUNC10(struct wahc *wa, size_t size)
{
	int result = 0;
	struct device *dev = &wa->usb_iface->dev;
	struct wa_notif_work *nw;

	/* dev_fnstart(dev, "(wa %p, size %zu)\n", wa, size); */
	FUNC0(size > wa->nep_buffer_size);
	if (size == 0)
		goto out;
	if (FUNC3(&wa->notifs_queued) > 200) {
		if (FUNC7())
			FUNC4(dev, "Too many notifications queued, "
				"throttling back\n");
		goto out;
	}
	nw = FUNC5(sizeof(*nw) + size, GFP_ATOMIC);
	if (nw == NULL) {
		if (FUNC7())
			FUNC4(dev, "No memory to queue notification\n");
		goto out;
	}
	FUNC1(&nw->work, wa_notif_dispatch);
	nw->wa = FUNC9(wa);
	nw->size = size;
	FUNC6(nw->data, wa->nep_buffer, size);
	FUNC2(&wa->notifs_queued);		/* Throttling ctl */
	FUNC8(wusbd, &nw->work);
out:
	/* dev_fnend(dev, "(wa %p, size %zu) = result\n", wa, size, result); */
	return result;
}