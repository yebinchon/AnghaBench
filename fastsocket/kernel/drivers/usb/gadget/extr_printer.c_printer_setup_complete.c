
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {scalar_t__ actual; scalar_t__ length; scalar_t__ status; } ;
struct usb_ep {scalar_t__ driver_data; } ;
struct printer_dev {int dummy; } ;


 int DBG (struct printer_dev*,char*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void printer_setup_complete(struct usb_ep *ep, struct usb_request *req)
{
 if (req->status || req->actual != req->length)
  DBG((struct printer_dev *) ep->driver_data,
    "setup complete --> %d, %d/%d\n",
    req->status, req->actual, req->length);
}
