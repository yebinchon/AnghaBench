
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_endpoint_descriptor {int dummy; } ;
struct urb {unsigned int number_of_packets; unsigned int transfer_buffer_length; unsigned int actual_length; int error_count; int start_frame; int interval; int transfer_flags; TYPE_3__* dev; TYPE_1__* ep; } ;
struct timeval {int tv_usec; int tv_sec; } ;
struct mon_reader_bin {int b_size; int b_wait; int b_lock; int cnt_lost; scalar_t__ mmap_active; } ;
struct mon_bin_isodesc {int dummy; } ;
struct TYPE_9__ {unsigned int numdesc; int error_count; } ;
struct TYPE_10__ {int setup; TYPE_4__ iso; } ;
struct mon_bin_hdr {char type; unsigned char epnum; unsigned long id; int status; unsigned int len_urb; unsigned int len_cap; char flag_setup; unsigned int ndesc; char flag_data; TYPE_5__ s; int start_frame; int interval; int xfer_flags; int ts_usec; int ts_sec; int busnum; int devnum; int xfer_type; } ;
struct TYPE_8__ {TYPE_2__* bus; int devnum; } ;
struct TYPE_7__ {int busnum; } ;
struct TYPE_6__ {struct usb_endpoint_descriptor desc; } ;


 unsigned int ISODESC_MAX ;
 struct mon_bin_hdr* MON_OFF2HDR (struct mon_reader_bin*,unsigned int) ;
 int PKT_ALIGN ;
 int PKT_SIZE ;
 unsigned char USB_DIR_IN ;
 int do_gettimeofday (struct timeval*) ;
 int memset (struct mon_bin_hdr*,int ,int) ;
 char mon_bin_get_data (struct mon_reader_bin*,unsigned int,struct urb*,unsigned int) ;
 int mon_bin_get_isodesc (struct mon_reader_bin*,unsigned int,struct urb*,char,unsigned int) ;
 char mon_bin_get_setup (int ,struct urb*,char) ;
 unsigned int mon_buff_area_alloc (struct mon_reader_bin*,int) ;
 unsigned int mon_buff_area_alloc_contiguous (struct mon_reader_bin*,int) ;
 int mon_buff_area_shrink (struct mon_reader_bin*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned char usb_endpoint_num (struct usb_endpoint_descriptor const*) ;
 size_t usb_endpoint_type (struct usb_endpoint_descriptor const*) ;
 scalar_t__ usb_endpoint_xfer_control (struct usb_endpoint_descriptor const*) ;
 scalar_t__ usb_endpoint_xfer_int (struct usb_endpoint_descriptor const*) ;
 scalar_t__ usb_endpoint_xfer_isoc (struct usb_endpoint_descriptor const*) ;
 scalar_t__ usb_urb_dir_in (struct urb*) ;
 int wake_up (int *) ;
 int * xfer_to_pipe ;

__attribute__((used)) static void mon_bin_event(struct mon_reader_bin *rp, struct urb *urb,
    char ev_type, int status)
{
 const struct usb_endpoint_descriptor *epd = &urb->ep->desc;
 unsigned long flags;
 struct timeval ts;
 unsigned int urb_length;
 unsigned int offset;
 unsigned int length;
 unsigned int delta;
 unsigned int ndesc, lendesc;
 unsigned char dir;
 struct mon_bin_hdr *ep;
 char data_tag = 0;

 do_gettimeofday(&ts);

 spin_lock_irqsave(&rp->b_lock, flags);




 if (usb_endpoint_xfer_isoc(epd)) {
  if (urb->number_of_packets < 0) {
   ndesc = 0;
  } else if (urb->number_of_packets >= ISODESC_MAX) {
   ndesc = ISODESC_MAX;
  } else {
   ndesc = urb->number_of_packets;
  }
 } else {
  ndesc = 0;
 }
 lendesc = ndesc*sizeof(struct mon_bin_isodesc);

 urb_length = (ev_type == 'S') ?
     urb->transfer_buffer_length : urb->actual_length;
 length = urb_length;

 if (length >= rp->b_size/5)
  length = rp->b_size/5;

 if (usb_urb_dir_in(urb)) {
  if (ev_type == 'S') {
   length = 0;
   data_tag = '<';
  }

  dir = USB_DIR_IN;
 } else {
  if (ev_type == 'C') {
   length = 0;
   data_tag = '>';
  }
  dir = 0;
 }

 if (rp->mmap_active) {
  offset = mon_buff_area_alloc_contiguous(rp,
       length + PKT_SIZE + lendesc);
 } else {
  offset = mon_buff_area_alloc(rp, length + PKT_SIZE + lendesc);
 }
 if (offset == ~0) {
  rp->cnt_lost++;
  spin_unlock_irqrestore(&rp->b_lock, flags);
  return;
 }

 ep = MON_OFF2HDR(rp, offset);
 if ((offset += PKT_SIZE) >= rp->b_size) offset = 0;




 memset(ep, 0, PKT_SIZE);
 ep->type = ev_type;
 ep->xfer_type = xfer_to_pipe[usb_endpoint_type(epd)];
 ep->epnum = dir | usb_endpoint_num(epd);
 ep->devnum = urb->dev->devnum;
 ep->busnum = urb->dev->bus->busnum;
 ep->id = (unsigned long) urb;
 ep->ts_sec = ts.tv_sec;
 ep->ts_usec = ts.tv_usec;
 ep->status = status;
 ep->len_urb = urb_length;
 ep->len_cap = length + lendesc;
 ep->xfer_flags = urb->transfer_flags;

 if (usb_endpoint_xfer_int(epd)) {
  ep->interval = urb->interval;
 } else if (usb_endpoint_xfer_isoc(epd)) {
  ep->interval = urb->interval;
  ep->start_frame = urb->start_frame;
  ep->s.iso.error_count = urb->error_count;
  ep->s.iso.numdesc = urb->number_of_packets;
 }

 if (usb_endpoint_xfer_control(epd) && ev_type == 'S') {
  ep->flag_setup = mon_bin_get_setup(ep->s.setup, urb, ev_type);
 } else {
  ep->flag_setup = '-';
 }

 if (ndesc != 0) {
  ep->ndesc = ndesc;
  mon_bin_get_isodesc(rp, offset, urb, ev_type, ndesc);
  if ((offset += lendesc) >= rp->b_size)
   offset -= rp->b_size;
 }

 if (length != 0) {
  ep->flag_data = mon_bin_get_data(rp, offset, urb, length);
  if (ep->flag_data != 0) {
   delta = (ep->len_cap + PKT_ALIGN-1) & ~(PKT_ALIGN-1);
   ep->len_cap -= length;
   delta -= (ep->len_cap + PKT_ALIGN-1) & ~(PKT_ALIGN-1);
   mon_buff_area_shrink(rp, delta);
  }
 } else {
  ep->flag_data = data_tag;
 }

 spin_unlock_irqrestore(&rp->b_lock, flags);

 wake_up(&rp->b_wait);
}
