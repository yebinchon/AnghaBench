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
struct wlp {int /*<<< orphan*/  pal; int /*<<< orphan*/  wss; int /*<<< orphan*/ * rc; } ;
struct net_device {int dummy; } ;
struct i1480u {int /*<<< orphan*/  notif_urb; struct wlp wlp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i1480u*) ; 
 int /*<<< orphan*/  FUNC2 (struct i1480u*) ; 
 struct i1480u* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct net_device *net_dev)
{
	struct i1480u *i1480u = FUNC3(net_dev);
	struct wlp *wlp = &i1480u->wlp;

	FUNC0(wlp->rc == NULL);
	FUNC8(&wlp->wss);
	FUNC4(net_dev);
#ifdef i1480u_FLOW_CONTROL
	usb_kill_urb(i1480u->notif_urb);
#endif
	FUNC5(net_dev);
	FUNC7(&wlp->pal);
	FUNC1(i1480u);
	FUNC2(i1480u);
	return 0;
}