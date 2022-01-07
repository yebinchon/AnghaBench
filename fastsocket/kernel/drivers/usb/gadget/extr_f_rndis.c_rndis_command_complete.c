
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct usb_request {int length; int actual; scalar_t__ buf; struct f_rndis* context; } ;
struct usb_ep {int dummy; } ;
struct usb_composite_dev {int dummy; } ;
struct TYPE_5__ {TYPE_1__* config; } ;
struct TYPE_6__ {TYPE_2__ func; } ;
struct f_rndis {int config; TYPE_3__ port; } ;
struct TYPE_4__ {struct usb_composite_dev* cdev; } ;


 int ERROR (struct usb_composite_dev*,char*,int,int ,int ) ;
 int rndis_msg_parser (int ,int *) ;

__attribute__((used)) static void rndis_command_complete(struct usb_ep *ep, struct usb_request *req)
{
 struct f_rndis *rndis = req->context;
 struct usb_composite_dev *cdev = rndis->port.func.config->cdev;
 int status;



 status = rndis_msg_parser(rndis->config, (u8 *) req->buf);
 if (status < 0)
  ERROR(cdev, "RNDIS command error %d, %d/%d\n",
   status, req->actual, req->length);

}
