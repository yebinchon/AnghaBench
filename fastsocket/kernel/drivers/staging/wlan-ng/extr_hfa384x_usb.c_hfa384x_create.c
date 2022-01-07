
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct TYPE_8__ {unsigned long data; int function; } ;
struct TYPE_6__ {int reapable; int completing; int active; int pending; int lock; } ;
struct TYPE_7__ {TYPE_4__ commsqual_timer; int commsqual_bh; int state; int link_status; int ctlx_urb; int tx_urb; int rx_urb; TYPE_4__ reqtimer; TYPE_4__ resptimer; TYPE_4__ throttle; int usb_work; int link_bh; int completion_bh; int reaper_bh; int authq; TYPE_1__ ctlxq; int cmdq; int endp_out; int endp_in; struct usb_device* usb; } ;
typedef TYPE_2__ hfa384x_t ;


 int HFA384x_LINK_NOTCONNECTED ;
 int HFA384x_STATE_INIT ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int hfa384x_usb_defer ;
 int hfa384x_usb_throttlefn ;
 int hfa384x_usbctlx_completion_task ;
 int hfa384x_usbctlx_reaper_task ;
 int hfa384x_usbctlx_reqtimerfn ;
 int hfa384x_usbctlx_resptimerfn ;
 int init_timer (TYPE_4__*) ;
 int init_waitqueue_head (int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int prism2sta_commsqual_defer ;
 int prism2sta_commsqual_timer ;
 int prism2sta_processing_defer ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int usb_init_urb (int *) ;
 int usb_rcvbulkpipe (struct usb_device*,int) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;

void hfa384x_create(hfa384x_t *hw, struct usb_device *usb)
{
 memset(hw, 0, sizeof(hfa384x_t));
 hw->usb = usb;


 hw->endp_in = usb_rcvbulkpipe(usb, 1);
 hw->endp_out = usb_sndbulkpipe(usb, 2);


 init_waitqueue_head(&hw->cmdq);


 spin_lock_init(&hw->ctlxq.lock);
 INIT_LIST_HEAD(&hw->ctlxq.pending);
 INIT_LIST_HEAD(&hw->ctlxq.active);
 INIT_LIST_HEAD(&hw->ctlxq.completing);
 INIT_LIST_HEAD(&hw->ctlxq.reapable);


 skb_queue_head_init(&hw->authq);

 tasklet_init(&hw->reaper_bh,
       hfa384x_usbctlx_reaper_task, (unsigned long)hw);
 tasklet_init(&hw->completion_bh,
       hfa384x_usbctlx_completion_task, (unsigned long)hw);
 INIT_WORK(&hw->link_bh, prism2sta_processing_defer);
 INIT_WORK(&hw->usb_work, hfa384x_usb_defer);

 init_timer(&hw->throttle);
 hw->throttle.function = hfa384x_usb_throttlefn;
 hw->throttle.data = (unsigned long)hw;

 init_timer(&hw->resptimer);
 hw->resptimer.function = hfa384x_usbctlx_resptimerfn;
 hw->resptimer.data = (unsigned long)hw;

 init_timer(&hw->reqtimer);
 hw->reqtimer.function = hfa384x_usbctlx_reqtimerfn;
 hw->reqtimer.data = (unsigned long)hw;

 usb_init_urb(&hw->rx_urb);
 usb_init_urb(&hw->tx_urb);
 usb_init_urb(&hw->ctlx_urb);

 hw->link_status = HFA384x_LINK_NOTCONNECTED;
 hw->state = HFA384x_STATE_INIT;

 INIT_WORK(&hw->commsqual_bh, prism2sta_commsqual_defer);
 init_timer(&hw->commsqual_timer);
 hw->commsqual_timer.data = (unsigned long)hw;
 hw->commsqual_timer.function = prism2sta_commsqual_timer;
}
