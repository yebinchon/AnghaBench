
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct usb_device {int dummy; } ;
struct urb {struct u132* hcpriv; int pipe; TYPE_1__* ep; } ;
struct u132_udev {int* endp_number_in; int* endp_number_out; int enumeration; } ;
struct u132_ring {int length; struct u132_endp* curr_endp; } ;
struct TYPE_6__ {int slock; } ;
struct u132_endp {int endp_number; int udev_number; int usb_addr; int usb_endp; int input; int output; int queue_size; TYPE_3__ queue_lock; scalar_t__ queue_last; struct urb** urb_list; scalar_t__ queue_next; void* pipetype; TYPE_1__* hep; struct u132* u132; scalar_t__ delayed; scalar_t__ active; scalar_t__ edset_flush; scalar_t__ dequeueing; int endp_ring; struct u132_ring* ring; int urb_more; int scheduler; } ;
struct u132 {int num_endpoints; struct u132_udev* udev; TYPE_2__* addr; struct u132_ring* ring; struct u132_endp** endp; } ;
typedef int gfp_t ;
struct TYPE_5__ {int address; } ;
struct TYPE_4__ {struct u132_endp* hcpriv; } ;


 size_t ENDP_QUEUE_MASK ;
 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct u132_endp*) ;
 struct u132_endp* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int u132_endp_get_kref (struct u132*,struct u132_endp*) ;
 int u132_endp_init_kref (struct u132*,struct u132_endp*) ;
 int u132_endp_queue_work (struct u132*,struct u132_endp*,int ) ;
 int u132_hcd_endp_work_scheduler ;
 int u132_to_hcd (struct u132*) ;
 int u132_udev_get_kref (struct u132*,struct u132_udev*) ;
 int u132_udev_init_kref (struct u132*,struct u132_udev*) ;
 int usb_hcd_link_urb_to_ep (int ,struct urb*) ;
 void* usb_pipetype (int ) ;

__attribute__((used)) static int create_endpoint_and_queue_control(struct u132 *u132,
 struct urb *urb,
 struct usb_device *usb_dev, u8 usb_addr, u8 usb_endp,
 gfp_t mem_flags)
{
 struct u132_ring *ring;
 unsigned long irqs;
 int rc;
 u8 endp_number;
 struct u132_endp *endp = kmalloc(sizeof(struct u132_endp), mem_flags);

 if (!endp)
  return -ENOMEM;

 spin_lock_init(&endp->queue_lock.slock);
 spin_lock_irqsave(&endp->queue_lock.slock, irqs);
 rc = usb_hcd_link_urb_to_ep(u132_to_hcd(u132), urb);
 if (rc) {
  spin_unlock_irqrestore(&endp->queue_lock.slock, irqs);
  kfree(endp);
  return rc;
 }

 endp_number = ++u132->num_endpoints;
 urb->ep->hcpriv = u132->endp[endp_number - 1] = endp;
 INIT_DELAYED_WORK(&endp->scheduler, u132_hcd_endp_work_scheduler);
 INIT_LIST_HEAD(&endp->urb_more);
 ring = endp->ring = &u132->ring[0];
 if (ring->curr_endp) {
  list_add_tail(&endp->endp_ring, &ring->curr_endp->endp_ring);
 } else {
  INIT_LIST_HEAD(&endp->endp_ring);
  ring->curr_endp = endp;
 }
 ring->length += 1;
 endp->dequeueing = 0;
 endp->edset_flush = 0;
 endp->active = 0;
 endp->delayed = 0;
 endp->endp_number = endp_number;
 endp->u132 = u132;
 endp->hep = urb->ep;
 u132_endp_init_kref(u132, endp);
 u132_endp_get_kref(u132, endp);
 if (usb_addr == 0) {
  u8 address = u132->addr[usb_addr].address;
  struct u132_udev *udev = &u132->udev[address];
  endp->udev_number = address;
  endp->usb_addr = usb_addr;
  endp->usb_endp = usb_endp;
  endp->input = 1;
  endp->output = 1;
  endp->pipetype = usb_pipetype(urb->pipe);
  u132_udev_init_kref(u132, udev);
  u132_udev_get_kref(u132, udev);
  udev->endp_number_in[usb_endp] = endp_number;
  udev->endp_number_out[usb_endp] = endp_number;
  urb->hcpriv = u132;
  endp->queue_size = 1;
  endp->queue_last = 0;
  endp->queue_next = 0;
  endp->urb_list[ENDP_QUEUE_MASK & endp->queue_last++] = urb;
  spin_unlock_irqrestore(&endp->queue_lock.slock, irqs);
  u132_endp_queue_work(u132, endp, 0);
  return 0;
 } else {
  u8 address = u132->addr[usb_addr].address;
  struct u132_udev *udev = &u132->udev[address];
  endp->udev_number = address;
  endp->usb_addr = usb_addr;
  endp->usb_endp = usb_endp;
  endp->input = 1;
  endp->output = 1;
  endp->pipetype = usb_pipetype(urb->pipe);
  u132_udev_get_kref(u132, udev);
  udev->enumeration = 2;
  udev->endp_number_in[usb_endp] = endp_number;
  udev->endp_number_out[usb_endp] = endp_number;
  urb->hcpriv = u132;
  endp->queue_size = 1;
  endp->queue_last = 0;
  endp->queue_next = 0;
  endp->urb_list[ENDP_QUEUE_MASK & endp->queue_last++] = urb;
  spin_unlock_irqrestore(&endp->queue_lock.slock, irqs);
  u132_endp_queue_work(u132, endp, 0);
  return 0;
 }
}
