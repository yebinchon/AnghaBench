
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vhci_unlink {int seqnum; int list; int unlink_seqnum; } ;
struct vhci_priv {int seqnum; int list; struct vhci_device* vdev; } ;
struct TYPE_5__ {int tcp_socket; } ;
struct vhci_device {int status; TYPE_2__ ud; int priv_lock; int waitq_tx; int unlink_tx; struct vhci_priv* hcpriv; } ;
struct usb_hcd {int dummy; } ;
struct urb {int status; TYPE_2__ ud; int priv_lock; int waitq_tx; int unlink_tx; struct vhci_priv* hcpriv; } ;
struct TYPE_4__ {int lock; int seqnum; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int VDEV_EVENT_ERROR_MALLOC ;
 int atomic_inc_return (int *) ;
 int kfree (struct vhci_priv*) ;
 struct vhci_unlink* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* the_controller ;
 int usb_hcd_check_unlink_urb (struct usb_hcd*,struct vhci_device*,int) ;
 int usb_hcd_giveback_urb (int ,struct vhci_device*,int ) ;
 int usb_hcd_unlink_urb_from_ep (struct usb_hcd*,struct vhci_device*) ;
 int usbip_dbg_vhci_hc (char*) ;
 int usbip_event_add (TYPE_2__*,int ) ;
 int usbip_uerr (char*) ;
 int usbip_uinfo (char*,...) ;
 int vhci_to_hcd (TYPE_1__*) ;
 int wake_up (int *) ;

__attribute__((used)) static int vhci_urb_dequeue(struct usb_hcd *hcd, struct urb *urb, int status)
{
 unsigned long flags;
 struct vhci_priv *priv;
 struct vhci_device *vdev;

 usbip_uinfo("vhci_hcd: dequeue a urb %p\n", urb);


 spin_lock_irqsave(&the_controller->lock, flags);

 priv = urb->hcpriv;
 if (!priv) {


  spin_unlock_irqrestore(&the_controller->lock, flags);
  return 0;
 }

 {
  int ret = 0;
  ret = usb_hcd_check_unlink_urb(hcd, urb, status);
  if (ret) {
   spin_unlock_irqrestore(&the_controller->lock, flags);
   return ret;
  }
 }


 vdev = priv->vdev;

 if (!vdev->ud.tcp_socket) {

  unsigned long flags2;

  spin_lock_irqsave(&vdev->priv_lock, flags2);

  usbip_uinfo("vhci_hcd: device %p seems to be disconnected\n",
         vdev);
  list_del(&priv->list);
  kfree(priv);
  urb->hcpriv = ((void*)0);

  spin_unlock_irqrestore(&vdev->priv_lock, flags2);






  usbip_uinfo("vhci_hcd: vhci_urb_dequeue() gives back urb %p\n",
         urb);

  usb_hcd_unlink_urb_from_ep(hcd, urb);

  spin_unlock_irqrestore(&the_controller->lock, flags);
  usb_hcd_giveback_urb(vhci_to_hcd(the_controller), urb,
        urb->status);
  spin_lock_irqsave(&the_controller->lock, flags);

 } else {

  unsigned long flags2;
  struct vhci_unlink *unlink;

  spin_lock_irqsave(&vdev->priv_lock, flags2);


  unlink = kzalloc(sizeof(struct vhci_unlink), GFP_ATOMIC);
  if (!unlink) {
   usbip_uerr("malloc vhci_unlink\n");
   spin_unlock_irqrestore(&vdev->priv_lock, flags2);
   spin_unlock_irqrestore(&the_controller->lock, flags);
   usbip_event_add(&vdev->ud, VDEV_EVENT_ERROR_MALLOC);
   return -ENOMEM;
  }

  unlink->seqnum = atomic_inc_return(&the_controller->seqnum);
  if (unlink->seqnum == 0xffff)
   usbip_uinfo("seqnum max\n");

  unlink->unlink_seqnum = priv->seqnum;

  usbip_uinfo("vhci_hcd: device %p seems to be still connected\n",
         vdev);



  list_add_tail(&unlink->list, &vdev->unlink_tx);
  wake_up(&vdev->waitq_tx);

  spin_unlock_irqrestore(&vdev->priv_lock, flags2);
 }


 if (!vdev->ud.tcp_socket) {

  usbip_uinfo("vhci_hcd: vhci_urb_dequeue() gives back urb %p\n",
         urb);

  usb_hcd_unlink_urb_from_ep(hcd, urb);

  spin_unlock_irqrestore(&the_controller->lock, flags);
  usb_hcd_giveback_urb(vhci_to_hcd(the_controller), urb,
        urb->status);
  spin_lock_irqsave(&the_controller->lock, flags);
 }

 spin_unlock_irqrestore(&the_controller->lock, flags);

 usbip_dbg_vhci_hc("leave\n");
 return 0;
}
