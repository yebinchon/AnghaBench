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
struct usb_interface {int dummy; } ;
struct net_device {int dummy; } ;
struct i1480u {int /*<<< orphan*/  notif_urb; struct net_device* net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct i1480u*) ; 
 int /*<<< orphan*/  FUNC2 (struct i1480u*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct i1480u* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *iface)
{
	struct i1480u *i1480u;
	struct net_device *net_dev;

	i1480u = FUNC5(iface);
	net_dev = i1480u->net_dev;
	FUNC3(net_dev);
#ifdef i1480u_FLOW_CONTROL
	usb_kill_urb(i1480u->notif_urb);
#endif
	FUNC2(i1480u);
	FUNC4(net_dev);
	FUNC1(i1480u);
	FUNC0(net_dev);
}