
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_endpoint_descriptor {int wMaxPacketSize; } ;
struct fsg_dev {int running; int bulk_in_enabled; int bulk_out_enabled; int intr_in_enabled; int nluns; TYPE_1__* luns; TYPE_2__* intreq; int intr_in; int bulk_out; int bulk_in; struct fsg_buffhd* buffhds; int gadget; int atomic_bitflags; int bulk_out_maxpacket; } ;
struct fsg_buffhd {TYPE_2__* outreq; TYPE_2__* inreq; int buf; } ;
struct TYPE_5__ {int complete; struct fsg_buffhd* context; int buf; } ;
struct TYPE_4__ {int unit_attention_data; } ;


 int DBG (struct fsg_dev*,char*,...) ;
 int IGNORE_BULK_OUT ;
 int NUM_BUFFERS ;
 int SS_RESET_OCCURRED ;
 int alloc_request (struct fsg_dev*,int ,TYPE_2__**) ;
 int bulk_in_complete ;
 int bulk_out_complete ;
 int clear_bit (int ,int *) ;
 int enable_endpoint (struct fsg_dev*,int ,struct usb_endpoint_descriptor const*) ;
 struct usb_endpoint_descriptor* ep_desc (int ,int *,int *) ;
 int fs_bulk_in_desc ;
 int fs_bulk_out_desc ;
 int fs_intr_in_desc ;
 int hs_bulk_in_desc ;
 int hs_bulk_out_desc ;
 int hs_intr_in_desc ;
 int intr_in_complete ;
 int le16_to_cpu (int ) ;
 scalar_t__ transport_is_cbi () ;
 int usb_ep_disable (int ) ;
 int usb_ep_free_request (int ,TYPE_2__*) ;

__attribute__((used)) static int do_set_interface(struct fsg_dev *fsg, int altsetting)
{
 int rc = 0;
 int i;
 const struct usb_endpoint_descriptor *d;

 if (fsg->running)
  DBG(fsg, "reset interface\n");

reset:

 for (i = 0; i < NUM_BUFFERS; ++i) {
  struct fsg_buffhd *bh = &fsg->buffhds[i];

  if (bh->inreq) {
   usb_ep_free_request(fsg->bulk_in, bh->inreq);
   bh->inreq = ((void*)0);
  }
  if (bh->outreq) {
   usb_ep_free_request(fsg->bulk_out, bh->outreq);
   bh->outreq = ((void*)0);
  }
 }
 if (fsg->intreq) {
  usb_ep_free_request(fsg->intr_in, fsg->intreq);
  fsg->intreq = ((void*)0);
 }


 if (fsg->bulk_in_enabled) {
  usb_ep_disable(fsg->bulk_in);
  fsg->bulk_in_enabled = 0;
 }
 if (fsg->bulk_out_enabled) {
  usb_ep_disable(fsg->bulk_out);
  fsg->bulk_out_enabled = 0;
 }
 if (fsg->intr_in_enabled) {
  usb_ep_disable(fsg->intr_in);
  fsg->intr_in_enabled = 0;
 }

 fsg->running = 0;
 if (altsetting < 0 || rc != 0)
  return rc;

 DBG(fsg, "set interface %d\n", altsetting);


 d = ep_desc(fsg->gadget, &fs_bulk_in_desc, &hs_bulk_in_desc);
 if ((rc = enable_endpoint(fsg, fsg->bulk_in, d)) != 0)
  goto reset;
 fsg->bulk_in_enabled = 1;

 d = ep_desc(fsg->gadget, &fs_bulk_out_desc, &hs_bulk_out_desc);
 if ((rc = enable_endpoint(fsg, fsg->bulk_out, d)) != 0)
  goto reset;
 fsg->bulk_out_enabled = 1;
 fsg->bulk_out_maxpacket = le16_to_cpu(d->wMaxPacketSize);
 clear_bit(IGNORE_BULK_OUT, &fsg->atomic_bitflags);

 if (transport_is_cbi()) {
  d = ep_desc(fsg->gadget, &fs_intr_in_desc, &hs_intr_in_desc);
  if ((rc = enable_endpoint(fsg, fsg->intr_in, d)) != 0)
   goto reset;
  fsg->intr_in_enabled = 1;
 }


 for (i = 0; i < NUM_BUFFERS; ++i) {
  struct fsg_buffhd *bh = &fsg->buffhds[i];

  if ((rc = alloc_request(fsg, fsg->bulk_in, &bh->inreq)) != 0)
   goto reset;
  if ((rc = alloc_request(fsg, fsg->bulk_out, &bh->outreq)) != 0)
   goto reset;
  bh->inreq->buf = bh->outreq->buf = bh->buf;
  bh->inreq->context = bh->outreq->context = bh;
  bh->inreq->complete = bulk_in_complete;
  bh->outreq->complete = bulk_out_complete;
 }
 if (transport_is_cbi()) {
  if ((rc = alloc_request(fsg, fsg->intr_in, &fsg->intreq)) != 0)
   goto reset;
  fsg->intreq->complete = intr_in_complete;
 }

 fsg->running = 1;
 for (i = 0; i < fsg->nluns; ++i)
  fsg->luns[i].unit_attention_data = SS_RESET_OCCURRED;
 return rc;
}
