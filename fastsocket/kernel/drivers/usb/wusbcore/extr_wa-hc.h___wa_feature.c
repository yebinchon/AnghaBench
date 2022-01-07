
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct wahc {TYPE_3__* usb_iface; int usb_dev; } ;
struct TYPE_6__ {TYPE_2__* cur_altsetting; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_CLEAR_FEATURE ;
 int USB_REQ_SET_FEATURE ;
 int USB_TYPE_CLASS ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static inline int __wa_feature(struct wahc *wa, unsigned op, u16 feature)
{
 return usb_control_msg(wa->usb_dev, usb_sndctrlpipe(wa->usb_dev, 0),
   op ? USB_REQ_SET_FEATURE : USB_REQ_CLEAR_FEATURE,
   USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
   feature,
   wa->usb_iface->cur_altsetting->desc.bInterfaceNumber,
   ((void*)0), 0, 1000 );
}
