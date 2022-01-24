#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct wlp* data; int /*<<< orphan*/  cb; } ;
struct TYPE_5__ {int /*<<< orphan*/  channel_changed; struct uwb_rc* rc; } ;
struct wlp {TYPE_3__ uwb_notifs_handler; struct uwb_rc* rc; TYPE_1__ pal; int /*<<< orphan*/  eda; struct net_device* ndev; int /*<<< orphan*/ * start_queue; int /*<<< orphan*/ * stop_queue; int /*<<< orphan*/ * xmit_frame; int /*<<< orphan*/ * fill_device_info; } ;
struct uwb_rc {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uwb_rc*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct uwb_rc*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  wlp_channel_changed ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wlp_uwb_notifs_cb ; 

int FUNC6(struct wlp *wlp, struct uwb_rc *rc, struct net_device *ndev)
{
	int result;

	FUNC0(wlp->fill_device_info == NULL);
	FUNC0(wlp->xmit_frame == NULL);
	FUNC0(wlp->stop_queue == NULL);
	FUNC0(wlp->start_queue == NULL);

	wlp->rc = rc;
	wlp->ndev = ndev;
	FUNC5(&wlp->eda);/* Set up address cache */
	wlp->uwb_notifs_handler.cb = wlp_uwb_notifs_cb;
	wlp->uwb_notifs_handler.data = wlp;
	FUNC2(rc, &wlp->uwb_notifs_handler);

	FUNC3(&wlp->pal);
	wlp->pal.rc = rc;
	wlp->pal.channel_changed = wlp_channel_changed;
	result = FUNC4(&wlp->pal);
	if (result < 0)
		FUNC1(wlp->rc, &wlp->uwb_notifs_handler);

	return result;
}