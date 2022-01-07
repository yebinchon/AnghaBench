
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {scalar_t__ context; scalar_t__ actual; scalar_t__ status; } ;
struct usb_ep {struct ep_data* driver_data; } ;
struct ep_data {scalar_t__ status; } ;
struct completion {int dummy; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void epio_complete (struct usb_ep *ep, struct usb_request *req)
{
 struct ep_data *epdata = ep->driver_data;

 if (!req->context)
  return;
 if (req->status)
  epdata->status = req->status;
 else
  epdata->status = req->actual;
 complete ((struct completion *)req->context);
}
