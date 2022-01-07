
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wahc {scalar_t__ status; TYPE_3__* usb_iface; int usb_dev; } ;
typedef scalar_t__ s32 ;
struct TYPE_6__ {TYPE_2__* cur_altsetting; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_GET_STATUS ;
 int USB_TYPE_CLASS ;
 scalar_t__ usb_control_msg (int ,int ,int ,int,int ,int ,scalar_t__*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static inline
s32 __wa_get_status(struct wahc *wa)
{
 s32 result;
 result = usb_control_msg(
  wa->usb_dev, usb_rcvctrlpipe(wa->usb_dev, 0),
  USB_REQ_GET_STATUS,
  USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
  0, wa->usb_iface->cur_altsetting->desc.bInterfaceNumber,
  &wa->status, sizeof(wa->status),
  1000 );
 if (result >= 0)
  result = wa->status;
 return result;
}
