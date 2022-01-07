
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wMaxPacketSize; } ;
struct usb_host_endpoint {TYPE_1__ desc; struct uhci_qh* hcpriv; } ;
struct usb_device {int speed; } ;
struct uhci_qh {int type; int load; int state; struct usb_device* udev; struct usb_host_endpoint* hep; int dummy_td; int node; int queue; void* link; void* element; int dma_handle; } ;
struct uhci_hcd {int qh_pool; } ;
typedef int dma_addr_t ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int QH_STATE_ACTIVE ;
 int QH_STATE_IDLE ;
 void* UHCI_PTR_TERM ;
 int USB_ENDPOINT_XFER_INT ;
 int USB_ENDPOINT_XFER_ISOC ;
 struct uhci_qh* dma_pool_alloc (int ,int ,int *) ;
 int dma_pool_free (int ,struct uhci_qh*,int ) ;
 int le16_to_cpu (int ) ;
 int memset (struct uhci_qh*,int ,int) ;
 int uhci_alloc_td (struct uhci_hcd*) ;
 int usb_calc_bus_time (int ,int ,int,int ) ;
 int usb_endpoint_dir_in (TYPE_1__*) ;
 int usb_endpoint_type (TYPE_1__*) ;

__attribute__((used)) static struct uhci_qh *uhci_alloc_qh(struct uhci_hcd *uhci,
  struct usb_device *udev, struct usb_host_endpoint *hep)
{
 dma_addr_t dma_handle;
 struct uhci_qh *qh;

 qh = dma_pool_alloc(uhci->qh_pool, GFP_ATOMIC, &dma_handle);
 if (!qh)
  return ((void*)0);

 memset(qh, 0, sizeof(*qh));
 qh->dma_handle = dma_handle;

 qh->element = UHCI_PTR_TERM;
 qh->link = UHCI_PTR_TERM;

 INIT_LIST_HEAD(&qh->queue);
 INIT_LIST_HEAD(&qh->node);

 if (udev) {
  qh->type = usb_endpoint_type(&hep->desc);
  if (qh->type != USB_ENDPOINT_XFER_ISOC) {
   qh->dummy_td = uhci_alloc_td(uhci);
   if (!qh->dummy_td) {
    dma_pool_free(uhci->qh_pool, qh, dma_handle);
    return ((void*)0);
   }
  }
  qh->state = QH_STATE_IDLE;
  qh->hep = hep;
  qh->udev = udev;
  hep->hcpriv = qh;

  if (qh->type == USB_ENDPOINT_XFER_INT ||
    qh->type == USB_ENDPOINT_XFER_ISOC)
   qh->load = usb_calc_bus_time(udev->speed,
     usb_endpoint_dir_in(&hep->desc),
     qh->type == USB_ENDPOINT_XFER_ISOC,
     le16_to_cpu(hep->desc.wMaxPacketSize))
    / 1000 + 1;

 } else {
  qh->state = QH_STATE_ACTIVE;
  qh->type = -1;
 }
 return qh;
}
