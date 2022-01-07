
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vhci_priv {int seqnum; int list; struct urb* urb; struct vhci_device* vdev; } ;
struct vhci_device {int priv_lock; int waitq_tx; int priv_tx; int ud; } ;
struct urb {void* hcpriv; TYPE_2__* dev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int seqnum; } ;


 int GFP_ATOMIC ;
 int VDEV_EVENT_ERROR_MALLOC ;
 int atomic_inc_return (int *) ;
 int dev_err (int *,char*) ;
 int err (char*) ;
 struct vhci_device* get_vdev (TYPE_2__*) ;
 struct vhci_priv* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* the_controller ;
 int usbip_event_add (int *,int ) ;
 int usbip_uinfo (char*) ;
 int wake_up (int *) ;

__attribute__((used)) static void vhci_tx_urb(struct urb *urb)
{
 struct vhci_device *vdev = get_vdev(urb->dev);
 struct vhci_priv *priv;
 unsigned long flag;

 if (!vdev) {
  err("could not get virtual device");

  return;
 }

 priv = kzalloc(sizeof(struct vhci_priv), GFP_ATOMIC);

 spin_lock_irqsave(&vdev->priv_lock, flag);

 if (!priv) {
  dev_err(&urb->dev->dev, "malloc vhci_priv\n");
  spin_unlock_irqrestore(&vdev->priv_lock, flag);
  usbip_event_add(&vdev->ud, VDEV_EVENT_ERROR_MALLOC);
  return;
 }

 priv->seqnum = atomic_inc_return(&the_controller->seqnum);
 if (priv->seqnum == 0xffff)
  usbip_uinfo("seqnum max\n");

 priv->vdev = vdev;
 priv->urb = urb;

 urb->hcpriv = (void *) priv;


 list_add_tail(&priv->list, &vdev->priv_tx);

 wake_up(&vdev->waitq_tx);
 spin_unlock_irqrestore(&vdev->priv_lock, flag);
}
