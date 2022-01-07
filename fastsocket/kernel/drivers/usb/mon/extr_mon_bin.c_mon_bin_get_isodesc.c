
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_iso_packet_descriptor {int actual_length; int length; int offset; int status; } ;
struct urb {struct usb_iso_packet_descriptor* iso_frame_desc; } ;
struct mon_reader_bin {unsigned int b_size; TYPE_1__* b_vec; } ;
struct mon_bin_isodesc {scalar_t__ _pad; int iso_len; int iso_off; int iso_status; } ;
struct TYPE_2__ {scalar_t__ ptr; } ;


 unsigned int CHUNK_SIZE ;

__attribute__((used)) static void mon_bin_get_isodesc(const struct mon_reader_bin *rp,
    unsigned int offset, struct urb *urb, char ev_type, unsigned int ndesc)
{
 struct mon_bin_isodesc *dp;
 struct usb_iso_packet_descriptor *fp;

 fp = urb->iso_frame_desc;
 while (ndesc-- != 0) {
  dp = (struct mon_bin_isodesc *)
      (rp->b_vec[offset / CHUNK_SIZE].ptr + offset % CHUNK_SIZE);
  dp->iso_status = fp->status;
  dp->iso_off = fp->offset;
  dp->iso_len = (ev_type == 'S') ? fp->length : fp->actual_length;
  dp->_pad = 0;
  if ((offset += sizeof(struct mon_bin_isodesc)) >= rp->b_size)
   offset = 0;
  fp++;
 }
}
