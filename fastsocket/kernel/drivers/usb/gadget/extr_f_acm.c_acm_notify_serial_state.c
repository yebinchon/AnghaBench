
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_composite_dev {int dummy; } ;
struct TYPE_5__ {TYPE_1__* config; } ;
struct TYPE_6__ {TYPE_2__ func; } ;
struct f_acm {int pending; int lock; int serial_state; int port_num; scalar_t__ notify_req; TYPE_3__ port; } ;
struct TYPE_4__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*,int ,int ) ;
 int USB_CDC_NOTIFY_SERIAL_STATE ;
 int acm_cdc_notify (struct f_acm*,int ,int ,int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int acm_notify_serial_state(struct f_acm *acm)
{
 struct usb_composite_dev *cdev = acm->port.func.config->cdev;
 int status;

 spin_lock(&acm->lock);
 if (acm->notify_req) {
  DBG(cdev, "acm ttyGS%d serial state %04x\n",
    acm->port_num, acm->serial_state);
  status = acm_cdc_notify(acm, USB_CDC_NOTIFY_SERIAL_STATE,
    0, &acm->serial_state, sizeof(acm->serial_state));
 } else {
  acm->pending = 1;
  status = 0;
 }
 spin_unlock(&acm->lock);
 return status;
}
