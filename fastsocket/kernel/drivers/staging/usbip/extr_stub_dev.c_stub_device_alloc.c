
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct TYPE_3__ {int unusable; int reset; int shutdown; } ;
struct TYPE_4__ {TYPE_1__ eh_ops; int * tcp_socket; int lock; int status; int side; int tcp_tx; int tcp_rx; } ;
struct stub_device {int devid; TYPE_2__ ud; int tx_waitq; int priv_lock; int unlink_tx; int unlink_free; int priv_free; int priv_tx; int priv_init; struct usb_interface* interface; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SDEV_ST_AVAILABLE ;
 int USBIP_STUB ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int init_waitqueue_head (int *) ;
 int interface_to_busnum (struct usb_interface*) ;
 int interface_to_devnum (struct usb_interface*) ;
 struct stub_device* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int stub_device_reset ;
 int stub_device_unusable ;
 int stub_rx_loop ;
 int stub_shutdown_connection ;
 int stub_tx_loop ;
 int usbip_start_eh (TYPE_2__*) ;
 int usbip_task_init (int *,char*,int ) ;
 int usbip_udbg (char*) ;

__attribute__((used)) static struct stub_device *stub_device_alloc(struct usb_interface *interface)
{
 struct stub_device *sdev;
 int busnum = interface_to_busnum(interface);
 int devnum = interface_to_devnum(interface);

 dev_dbg(&interface->dev, "allocating stub device");


 sdev = kzalloc(sizeof(struct stub_device), GFP_KERNEL);
 if (!sdev) {
  dev_err(&interface->dev, "no memory for stub_device\n");
  return ((void*)0);
 }

 sdev->interface = interface;






 sdev->devid = (busnum << 16) | devnum;

 usbip_task_init(&sdev->ud.tcp_rx, "stub_rx", stub_rx_loop);
 usbip_task_init(&sdev->ud.tcp_tx, "stub_tx", stub_tx_loop);

 sdev->ud.side = USBIP_STUB;
 sdev->ud.status = SDEV_ST_AVAILABLE;

 spin_lock_init(&sdev->ud.lock);
 sdev->ud.tcp_socket = ((void*)0);

 INIT_LIST_HEAD(&sdev->priv_init);
 INIT_LIST_HEAD(&sdev->priv_tx);
 INIT_LIST_HEAD(&sdev->priv_free);
 INIT_LIST_HEAD(&sdev->unlink_free);
 INIT_LIST_HEAD(&sdev->unlink_tx);

 spin_lock_init(&sdev->priv_lock);

 init_waitqueue_head(&sdev->tx_waitq);

 sdev->ud.eh_ops.shutdown = stub_shutdown_connection;
 sdev->ud.eh_ops.reset = stub_device_reset;
 sdev->ud.eh_ops.unusable = stub_device_unusable;

 usbip_start_eh(&sdev->ud);

 usbip_udbg("register new interface\n");
 return sdev;
}
