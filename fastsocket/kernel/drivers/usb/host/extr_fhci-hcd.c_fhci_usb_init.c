
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct fhci_usb {int saved_msk; TYPE_3__* fhci; TYPE_4__* actual_frame; int sw_transaction_time; int max_frame_usage; int port_status; } ;
struct fhci_hcd {TYPE_1__* pram; struct fhci_usb* usb_lld; } ;
struct TYPE_8__ {int tds_list; } ;
struct TYPE_7__ {TYPE_2__* regs; int pram; } ;
struct TYPE_6__ {int usb_event; int usb_mask; int usb_mod; } ;
struct TYPE_5__ {int rx_state; int frame_num; } ;


 int DEFAULT_DATA_MEM ;
 int DEFAULT_RING_LEN ;
 int EINVAL ;
 int ENOMEM ;
 int FHCI_PORT_DISABLED ;
 int FHCI_PRAM_SIZE ;
 int FRAME_TIME_USAGE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SW_FIX_TIME_BETWEEN_TRANSACTION ;
 int USB_E_IDLE_MASK ;
 int USB_E_MSF_MASK ;
 int USB_E_RESET_MASK ;
 int USB_E_SFT_MASK ;
 int USB_E_TXB_MASK ;
 int USB_E_TXE1_MASK ;
 int USB_MODE_EN ;
 int USB_MODE_HOST ;
 scalar_t__ endpoint_zero_init (struct fhci_usb*,int ,int ) ;
 int fhci_usb_free (struct fhci_usb*) ;
 TYPE_4__* kzalloc (int,int ) ;
 int memset_io (int ,int ,int ) ;
 int out_8 (int *,int) ;
 int out_be16 (int *,int) ;
 int out_be32 (int *,int ) ;

__attribute__((used)) static int fhci_usb_init(struct fhci_hcd *fhci)
{
 struct fhci_usb *usb = fhci->usb_lld;

 memset_io(usb->fhci->pram, 0, FHCI_PRAM_SIZE);

 usb->port_status = FHCI_PORT_DISABLED;
 usb->max_frame_usage = FRAME_TIME_USAGE;
 usb->sw_transaction_time = SW_FIX_TIME_BETWEEN_TRANSACTION;

 usb->actual_frame = kzalloc(sizeof(*usb->actual_frame), GFP_KERNEL);
 if (!usb->actual_frame) {
  fhci_usb_free(usb);
  return -ENOMEM;
 }

 INIT_LIST_HEAD(&usb->actual_frame->tds_list);


 out_be16(&fhci->pram->frame_num, 0);


 out_be32(&fhci->pram->rx_state, 0);


 usb->saved_msk = (USB_E_TXB_MASK |
     USB_E_TXE1_MASK |
     USB_E_IDLE_MASK |
     USB_E_RESET_MASK | USB_E_SFT_MASK | USB_E_MSF_MASK);

 out_8(&usb->fhci->regs->usb_mod, USB_MODE_HOST | USB_MODE_EN);


 out_be16(&usb->fhci->regs->usb_mask, 0);


 out_be16(&usb->fhci->regs->usb_event, 0xffff);

 if (endpoint_zero_init(usb, DEFAULT_DATA_MEM, DEFAULT_RING_LEN) != 0) {
  fhci_usb_free(usb);
  return -EINVAL;
 }

 return 0;
}
