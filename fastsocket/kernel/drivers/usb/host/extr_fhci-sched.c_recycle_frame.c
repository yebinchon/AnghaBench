
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packet {int * priv_data; scalar_t__ info; int status; scalar_t__ len; int * data; } ;
struct fhci_usb {TYPE_1__* ep0; } ;
struct TYPE_2__ {int empty_frame_Q; } ;


 int USB_TD_OK ;
 int cq_put (int ,struct packet*) ;

__attribute__((used)) static void recycle_frame(struct fhci_usb *usb, struct packet *pkt)
{
 pkt->data = ((void*)0);
 pkt->len = 0;
 pkt->status = USB_TD_OK;
 pkt->info = 0;
 pkt->priv_data = ((void*)0);

 cq_put(usb->ep0->empty_frame_Q, pkt);
}
