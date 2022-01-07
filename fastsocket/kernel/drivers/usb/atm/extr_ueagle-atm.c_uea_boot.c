
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct uea_softc {scalar_t__ kthread; int work_q; int * urb_int; TYPE_6__* usb_dev; int sync_q; int task; int send_cmvs; int stat; int schedule_load_page; int dispatch_cmv; } ;
struct intr_pkt {int dummy; } ;
struct TYPE_13__ {TYPE_5__* actconfig; } ;
struct TYPE_12__ {TYPE_4__** interface; } ;
struct TYPE_11__ {TYPE_3__* altsetting; } ;
struct TYPE_10__ {TYPE_2__* endpoint; } ;
struct TYPE_8__ {int bInterval; } ;
struct TYPE_9__ {TYPE_1__ desc; } ;


 scalar_t__ ADI930 ;
 int E1_INTR_PKT_SIZE ;
 int E4_INTR_PKT_SIZE ;
 scalar_t__ EAGLE_IV ;
 int ENOMEM ;
 scalar_t__ ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int INS_TO_USBDEV (struct uea_softc*) ;
 scalar_t__ UEA_CHIP_VERSION (struct uea_softc*) ;
 int UEA_INTR_PIPE ;
 int create_workqueue (char*) ;
 int destroy_workqueue (int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct intr_pkt*) ;
 struct intr_pkt* kmalloc (int,int ) ;
 scalar_t__ kthread_run (int ,struct uea_softc*,char*) ;
 int load_XILINX_firmware (struct uea_softc*) ;
 int uea_dispatch_cmv_e1 ;
 int uea_dispatch_cmv_e4 ;
 int uea_enters (int ) ;
 int uea_err (int ,char*,...) ;
 int uea_intr ;
 int uea_kthread ;
 int uea_leaves (int ) ;
 int uea_load_page_e1 ;
 int uea_load_page_e4 ;
 int uea_schedule_load_page_e1 ;
 int uea_schedule_load_page_e4 ;
 int uea_send_cmvs_e1 ;
 int uea_send_cmvs_e4 ;
 int uea_stat_e1 ;
 int uea_stat_e4 ;
 int * usb_alloc_urb (int ,int ) ;
 int usb_fill_int_urb (int *,TYPE_6__*,int ,struct intr_pkt*,int,int ,struct uea_softc*,int ) ;
 int usb_free_urb (int *) ;
 int usb_kill_urb (int *) ;
 int usb_rcvintpipe (TYPE_6__*,int ) ;
 int usb_submit_urb (int *,int ) ;

__attribute__((used)) static int uea_boot(struct uea_softc *sc)
{
 int ret, size;
 struct intr_pkt *intr;

 uea_enters(INS_TO_USBDEV(sc));

 if (UEA_CHIP_VERSION(sc) == EAGLE_IV) {
  size = E4_INTR_PKT_SIZE;
  sc->dispatch_cmv = uea_dispatch_cmv_e4;
  sc->schedule_load_page = uea_schedule_load_page_e4;
  sc->stat = uea_stat_e4;
  sc->send_cmvs = uea_send_cmvs_e4;
  INIT_WORK(&sc->task, uea_load_page_e4);
 } else {
  size = E1_INTR_PKT_SIZE;
  sc->dispatch_cmv = uea_dispatch_cmv_e1;
  sc->schedule_load_page = uea_schedule_load_page_e1;
  sc->stat = uea_stat_e1;
  sc->send_cmvs = uea_send_cmvs_e1;
  INIT_WORK(&sc->task, uea_load_page_e1);
 }

 init_waitqueue_head(&sc->sync_q);

 sc->work_q = create_workqueue("ueagle-dsp");
 if (!sc->work_q) {
  uea_err(INS_TO_USBDEV(sc), "cannot allocate workqueue\n");
  uea_leaves(INS_TO_USBDEV(sc));
  return -ENOMEM;
 }

 if (UEA_CHIP_VERSION(sc) == ADI930)
  load_XILINX_firmware(sc);

 intr = kmalloc(size, GFP_KERNEL);
 if (!intr) {
  uea_err(INS_TO_USBDEV(sc),
         "cannot allocate interrupt package\n");
  goto err0;
 }

 sc->urb_int = usb_alloc_urb(0, GFP_KERNEL);
 if (!sc->urb_int) {
  uea_err(INS_TO_USBDEV(sc), "cannot allocate interrupt URB\n");
  goto err1;
 }

 usb_fill_int_urb(sc->urb_int, sc->usb_dev,
    usb_rcvintpipe(sc->usb_dev, UEA_INTR_PIPE),
    intr, size, uea_intr, sc,
    sc->usb_dev->actconfig->interface[0]->altsetting[0].
    endpoint[0].desc.bInterval);

 ret = usb_submit_urb(sc->urb_int, GFP_KERNEL);
 if (ret < 0) {
  uea_err(INS_TO_USBDEV(sc),
         "urb submition failed with error %d\n", ret);
  goto err1;
 }

 sc->kthread = kthread_run(uea_kthread, sc, "ueagle-atm");
 if (sc->kthread == ERR_PTR(-ENOMEM)) {
  uea_err(INS_TO_USBDEV(sc), "failed to create thread\n");
  goto err2;
 }

 uea_leaves(INS_TO_USBDEV(sc));
 return 0;

err2:
 usb_kill_urb(sc->urb_int);
err1:
 usb_free_urb(sc->urb_int);
 sc->urb_int = ((void*)0);
 kfree(intr);
err0:
 destroy_workqueue(sc->work_q);
 uea_leaves(INS_TO_USBDEV(sc));
 return -ENOMEM;
}
