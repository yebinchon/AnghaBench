
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int unusable; int reset; int shutdown; } ;
struct TYPE_4__ {TYPE_1__ eh_ops; int lock; int status; int side; int tcp_tx; int tcp_rx; } ;
struct vhci_device {TYPE_2__ ud; int waitq_tx; int priv_lock; int unlink_rx; int unlink_tx; int priv_tx; int priv_rx; } ;


 int INIT_LIST_HEAD (int *) ;
 int USBIP_VHCI ;
 int VDEV_ST_NULL ;
 int init_waitqueue_head (int *) ;
 int memset (struct vhci_device*,int ,int) ;
 int spin_lock_init (int *) ;
 int usbip_start_eh (TYPE_2__*) ;
 int usbip_task_init (int *,char*,int ) ;
 int vhci_device_reset ;
 int vhci_device_unusable ;
 int vhci_rx_loop ;
 int vhci_shutdown_connection ;
 int vhci_tx_loop ;

__attribute__((used)) static void vhci_device_init(struct vhci_device *vdev)
{
 memset(vdev, 0, sizeof(*vdev));

 usbip_task_init(&vdev->ud.tcp_rx, "vhci_rx", vhci_rx_loop);
 usbip_task_init(&vdev->ud.tcp_tx, "vhci_tx", vhci_tx_loop);

 vdev->ud.side = USBIP_VHCI;
 vdev->ud.status = VDEV_ST_NULL;

 spin_lock_init(&vdev->ud.lock);

 INIT_LIST_HEAD(&vdev->priv_rx);
 INIT_LIST_HEAD(&vdev->priv_tx);
 INIT_LIST_HEAD(&vdev->unlink_tx);
 INIT_LIST_HEAD(&vdev->unlink_rx);

 spin_lock_init(&vdev->priv_lock);

 init_waitqueue_head(&vdev->waitq_tx);

 vdev->ud.eh_ops.shutdown = vhci_shutdown_connection;
 vdev->ud.eh_ops.reset = vhci_device_reset;
 vdev->ud.eh_ops.unusable = vhci_device_unusable;

 usbip_start_eh(&vdev->ud);
}
