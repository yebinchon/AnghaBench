
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acm_wb {TYPE_1__* urb; int len; int dmah; int buf; } ;
struct acm {int dev; int transmitting; } ;
struct TYPE_2__ {int dev; int transfer_buffer_length; int transfer_dma; int transfer_buffer; } ;


 int GFP_ATOMIC ;
 int acm_write_done (struct acm*,struct acm_wb*) ;
 int dbg (char*,int) ;
 int usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int acm_start_wb(struct acm *acm, struct acm_wb *wb)
{
 int rc;

 acm->transmitting++;

 wb->urb->transfer_buffer = wb->buf;
 wb->urb->transfer_dma = wb->dmah;
 wb->urb->transfer_buffer_length = wb->len;
 wb->urb->dev = acm->dev;

 rc = usb_submit_urb(wb->urb, GFP_ATOMIC);
 if (rc < 0) {
  dbg("usb_submit_urb(write bulk) failed: %d", rc);
  acm_write_done(acm, wb);
 }
 return rc;
}
