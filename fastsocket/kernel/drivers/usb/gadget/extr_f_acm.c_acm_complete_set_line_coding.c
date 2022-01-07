
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_request {int status; int actual; struct usb_cdc_line_coding* buf; } ;
struct usb_ep {struct f_acm* driver_data; } ;
struct usb_composite_dev {int dummy; } ;
struct usb_cdc_line_coding {int dummy; } ;
struct TYPE_5__ {TYPE_1__* config; } ;
struct TYPE_6__ {TYPE_2__ func; } ;
struct f_acm {struct usb_cdc_line_coding port_line_coding; int port_num; TYPE_3__ port; } ;
struct TYPE_4__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*,int ,int) ;
 int usb_ep_set_halt (struct usb_ep*) ;

__attribute__((used)) static void acm_complete_set_line_coding(struct usb_ep *ep,
  struct usb_request *req)
{
 struct f_acm *acm = ep->driver_data;
 struct usb_composite_dev *cdev = acm->port.func.config->cdev;

 if (req->status != 0) {
  DBG(cdev, "acm ttyGS%d completion, err %d\n",
    acm->port_num, req->status);
  return;
 }


 if (req->actual != sizeof(acm->port_line_coding)) {
  DBG(cdev, "acm ttyGS%d short resp, len %d\n",
    acm->port_num, req->actual);
  usb_ep_set_halt(ep);
 } else {
  struct usb_cdc_line_coding *value = req->buf;
  acm->port_line_coding = *value;
 }
}
