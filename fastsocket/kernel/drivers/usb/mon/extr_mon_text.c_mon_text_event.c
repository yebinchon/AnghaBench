
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct usb_iso_packet_descriptor {int actual_length; int length; int offset; int status; } ;
struct urb {int number_of_packets; struct usb_iso_packet_descriptor* iso_frame_desc; int error_count; int start_frame; int interval; int actual_length; int transfer_buffer_length; TYPE_3__* ep; TYPE_2__* dev; } ;
struct TYPE_10__ {TYPE_5__* m_bus; } ;
struct mon_reader_text {scalar_t__ nevents; int wait; int e_list; TYPE_4__ r; int e_slab; } ;
struct mon_iso_desc {int length; int offset; int status; } ;
struct mon_event_text {char type; unsigned long id; scalar_t__ xfertype; unsigned int tstamp; int status; int numdesc; int e_link; int length; int data_flag; int setup_flag; struct mon_iso_desc* isodesc; int error_count; int start_frame; int interval; int is_in; int epnum; int devnum; int busnum; } ;
struct TYPE_11__ {int cnt_text_lost; } ;
struct TYPE_9__ {int desc; } ;
struct TYPE_8__ {int devnum; TYPE_1__* bus; } ;
struct TYPE_7__ {int busnum; } ;


 scalar_t__ EVENT_MAX ;
 int GFP_ATOMIC ;
 int ISODESC_MAX ;
 scalar_t__ USB_ENDPOINT_XFER_INT ;
 scalar_t__ USB_ENDPOINT_XFER_ISOC ;
 struct mon_event_text* kmem_cache_alloc (int ,int ) ;
 int list_add_tail (int *,int *) ;
 unsigned int mon_get_timestamp () ;
 int mon_text_get_data (struct mon_event_text*,struct urb*,int ,char,TYPE_5__*) ;
 int mon_text_get_setup (struct mon_event_text*,struct urb*,char,TYPE_5__*) ;
 int usb_endpoint_num (int *) ;
 scalar_t__ usb_endpoint_type (int *) ;
 int usb_urb_dir_in (struct urb*) ;
 int wake_up (int *) ;

__attribute__((used)) static void mon_text_event(struct mon_reader_text *rp, struct urb *urb,
    char ev_type, int status)
{
 struct mon_event_text *ep;
 unsigned int stamp;
 struct usb_iso_packet_descriptor *fp;
 struct mon_iso_desc *dp;
 int i, ndesc;

 stamp = mon_get_timestamp();

 if (rp->nevents >= EVENT_MAX ||
     (ep = kmem_cache_alloc(rp->e_slab, GFP_ATOMIC)) == ((void*)0)) {
  rp->r.m_bus->cnt_text_lost++;
  return;
 }

 ep->type = ev_type;
 ep->id = (unsigned long) urb;
 ep->busnum = urb->dev->bus->busnum;
 ep->devnum = urb->dev->devnum;
 ep->epnum = usb_endpoint_num(&urb->ep->desc);
 ep->xfertype = usb_endpoint_type(&urb->ep->desc);
 ep->is_in = usb_urb_dir_in(urb);
 ep->tstamp = stamp;
 ep->length = (ev_type == 'S') ?
     urb->transfer_buffer_length : urb->actual_length;

 ep->status = status;

 if (ep->xfertype == USB_ENDPOINT_XFER_INT) {
  ep->interval = urb->interval;
 } else if (ep->xfertype == USB_ENDPOINT_XFER_ISOC) {
  ep->interval = urb->interval;
  ep->start_frame = urb->start_frame;
  ep->error_count = urb->error_count;
 }
 ep->numdesc = urb->number_of_packets;
 if (ep->xfertype == USB_ENDPOINT_XFER_ISOC &&
   urb->number_of_packets > 0) {
  if ((ndesc = urb->number_of_packets) > ISODESC_MAX)
   ndesc = ISODESC_MAX;
  fp = urb->iso_frame_desc;
  dp = ep->isodesc;
  for (i = 0; i < ndesc; i++) {
   dp->status = fp->status;
   dp->offset = fp->offset;
   dp->length = (ev_type == 'S') ?
       fp->length : fp->actual_length;
   fp++;
   dp++;
  }
 }

 ep->setup_flag = mon_text_get_setup(ep, urb, ev_type, rp->r.m_bus);
 ep->data_flag = mon_text_get_data(ep, urb, ep->length, ev_type,
   rp->r.m_bus);

 rp->nevents++;
 list_add_tail(&ep->e_link, &rp->e_list);
 wake_up(&rp->wait);
}
