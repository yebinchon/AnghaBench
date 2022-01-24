#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  unusable; int /*<<< orphan*/  reset; int /*<<< orphan*/  shutdown; } ;
struct TYPE_4__ {TYPE_1__ eh_ops; int /*<<< orphan*/ * tcp_socket; int /*<<< orphan*/  lock; int /*<<< orphan*/  status; int /*<<< orphan*/  side; int /*<<< orphan*/  tcp_tx; int /*<<< orphan*/  tcp_rx; } ;
struct stub_device {int devid; TYPE_2__ ud; int /*<<< orphan*/  tx_waitq; int /*<<< orphan*/  priv_lock; int /*<<< orphan*/  unlink_tx; int /*<<< orphan*/  unlink_free; int /*<<< orphan*/  priv_free; int /*<<< orphan*/  priv_tx; int /*<<< orphan*/  priv_init; struct usb_interface* interface; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SDEV_ST_AVAILABLE ; 
 int /*<<< orphan*/  USBIP_STUB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct usb_interface*) ; 
 int FUNC5 (struct usb_interface*) ; 
 struct stub_device* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stub_device_reset ; 
 int /*<<< orphan*/  stub_device_unusable ; 
 int /*<<< orphan*/  stub_rx_loop ; 
 int /*<<< orphan*/  stub_shutdown_connection ; 
 int /*<<< orphan*/  stub_tx_loop ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static struct stub_device *FUNC11(struct usb_interface *interface)
{
	struct stub_device *sdev;
	int busnum = FUNC4(interface);
	int devnum = FUNC5(interface);

	FUNC1(&interface->dev, "allocating stub device");

	/* yes, it's a new device */
	sdev = FUNC6(sizeof(struct stub_device), GFP_KERNEL);
	if (!sdev) {
		FUNC2(&interface->dev, "no memory for stub_device\n");
		return NULL;
	}

	sdev->interface = interface;

	/*
	 * devid is defined with devnum when this driver is first allocated.
	 * devnum may change later if a device is reset. However, devid never
	 * changes during a usbip connection.
	 */
	sdev->devid     = (busnum << 16) | devnum;

	FUNC9(&sdev->ud.tcp_rx, "stub_rx", stub_rx_loop);
	FUNC9(&sdev->ud.tcp_tx, "stub_tx", stub_tx_loop);

	sdev->ud.side = USBIP_STUB;
	sdev->ud.status = SDEV_ST_AVAILABLE;
	/* sdev->ud.lock = SPIN_LOCK_UNLOCKED; */
	FUNC7(&sdev->ud.lock);
	sdev->ud.tcp_socket = NULL;

	FUNC0(&sdev->priv_init);
	FUNC0(&sdev->priv_tx);
	FUNC0(&sdev->priv_free);
	FUNC0(&sdev->unlink_free);
	FUNC0(&sdev->unlink_tx);
	/* sdev->priv_lock = SPIN_LOCK_UNLOCKED; */
	FUNC7(&sdev->priv_lock);

	FUNC3(&sdev->tx_waitq);

	sdev->ud.eh_ops.shutdown = stub_shutdown_connection;
	sdev->ud.eh_ops.reset    = stub_device_reset;
	sdev->ud.eh_ops.unusable = stub_device_unusable;

	FUNC8(&sdev->ud);

	FUNC10("register new interface\n");
	return sdev;
}