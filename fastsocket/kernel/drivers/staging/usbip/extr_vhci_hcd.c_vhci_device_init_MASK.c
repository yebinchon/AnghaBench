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
struct TYPE_3__ {int /*<<< orphan*/  unusable; int /*<<< orphan*/  reset; int /*<<< orphan*/  shutdown; } ;
struct TYPE_4__ {TYPE_1__ eh_ops; int /*<<< orphan*/  lock; int /*<<< orphan*/  status; int /*<<< orphan*/  side; int /*<<< orphan*/  tcp_tx; int /*<<< orphan*/  tcp_rx; } ;
struct vhci_device {TYPE_2__ ud; int /*<<< orphan*/  waitq_tx; int /*<<< orphan*/  priv_lock; int /*<<< orphan*/  unlink_rx; int /*<<< orphan*/  unlink_tx; int /*<<< orphan*/  priv_tx; int /*<<< orphan*/  priv_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  USBIP_VHCI ; 
 int /*<<< orphan*/  VDEV_ST_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vhci_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vhci_device_reset ; 
 int /*<<< orphan*/  vhci_device_unusable ; 
 int /*<<< orphan*/  vhci_rx_loop ; 
 int /*<<< orphan*/  vhci_shutdown_connection ; 
 int /*<<< orphan*/  vhci_tx_loop ; 

__attribute__((used)) static void FUNC6(struct vhci_device *vdev)
{
	FUNC2(vdev, 0, sizeof(*vdev));

	FUNC5(&vdev->ud.tcp_rx, "vhci_rx", vhci_rx_loop);
	FUNC5(&vdev->ud.tcp_tx, "vhci_tx", vhci_tx_loop);

	vdev->ud.side   = USBIP_VHCI;
	vdev->ud.status = VDEV_ST_NULL;
	/* vdev->ud.lock   = SPIN_LOCK_UNLOCKED; */
	FUNC3(&vdev->ud.lock);

	FUNC0(&vdev->priv_rx);
	FUNC0(&vdev->priv_tx);
	FUNC0(&vdev->unlink_tx);
	FUNC0(&vdev->unlink_rx);
	/* vdev->priv_lock = SPIN_LOCK_UNLOCKED; */
	FUNC3(&vdev->priv_lock);

	FUNC1(&vdev->waitq_tx);

	vdev->ud.eh_ops.shutdown = vhci_shutdown_connection;
	vdev->ud.eh_ops.reset = vhci_device_reset;
	vdev->ud.eh_ops.unusable = vhci_device_unusable;

	FUNC4(&vdev->ud);
}