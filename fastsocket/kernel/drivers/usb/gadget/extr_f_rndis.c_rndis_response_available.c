
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_request {int * buf; } ;
struct usb_composite_dev {int dummy; } ;
struct TYPE_6__ {TYPE_1__* config; } ;
struct TYPE_5__ {TYPE_3__ func; } ;
struct f_rndis {int notify_count; int notify; TYPE_2__ port; struct usb_request* notify_req; } ;
typedef int __le32 ;
struct TYPE_4__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*,int) ;
 int GFP_ATOMIC ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int cpu_to_le32 (int) ;
 int usb_ep_queue (int ,struct usb_request*,int ) ;

__attribute__((used)) static void rndis_response_available(void *_rndis)
{
 struct f_rndis *rndis = _rndis;
 struct usb_request *req = rndis->notify_req;
 struct usb_composite_dev *cdev = rndis->port.func.config->cdev;
 __le32 *data = req->buf;
 int status;

 if (atomic_inc_return(&rndis->notify_count) != 1)
  return;






 data[0] = cpu_to_le32(1);
 data[1] = cpu_to_le32(0);

 status = usb_ep_queue(rndis->notify, req, GFP_ATOMIC);
 if (status) {
  atomic_dec(&rndis->notify_count);
  DBG(cdev, "notify/0 --> %d\n", status);
 }
}
