
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int status; struct intr_pkt* transfer_buffer; struct uea_softc* context; } ;
struct uea_softc {int urb_int; int (* dispatch_cmv ) (struct uea_softc*,struct intr_pkt*) ;int (* schedule_load_page ) (struct uea_softc*,struct intr_pkt*) ;scalar_t__ booting; } ;
struct intr_pkt {int bType; int wInterrupt; } ;


 int GFP_ATOMIC ;
 int INS_TO_USBDEV (struct uea_softc*) ;


 int le16_to_cpu (int ) ;
 int stub1 (struct uea_softc*,struct intr_pkt*) ;
 int stub2 (struct uea_softc*,struct intr_pkt*) ;
 int uea_enters (int ) ;
 int uea_err (int ,char*,...) ;
 scalar_t__ unlikely (int) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static void uea_intr(struct urb *urb)
{
 struct uea_softc *sc = urb->context;
 struct intr_pkt *intr = urb->transfer_buffer;
 int status = urb->status;

 uea_enters(INS_TO_USBDEV(sc));

 if (unlikely(status < 0)) {
  uea_err(INS_TO_USBDEV(sc), "uea_intr() failed with %d\n",
         status);
  return;
 }


 if (intr->bType != 0x08 || sc->booting) {
  uea_err(INS_TO_USBDEV(sc), "wrong interrupt\n");
  goto resubmit;
 }

 switch (le16_to_cpu(intr->wInterrupt)) {
 case 128:
  sc->schedule_load_page(sc, intr);
  break;

 case 129:
  sc->dispatch_cmv(sc, intr);
  break;

 default:
  uea_err(INS_TO_USBDEV(sc), "unknown interrupt %u\n",
         le16_to_cpu(intr->wInterrupt));
 }

resubmit:
 usb_submit_urb(sc->urb_int, GFP_ATOMIC);
}
