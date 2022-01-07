
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uwb_rccb {int dummy; } ;
struct uwb_rc {struct hwarc* priv; } ;
struct hwarc {TYPE_3__* usb_iface; int usb_dev; } ;
struct TYPE_6__ {TYPE_2__* cur_altsetting; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int WA_EXEC_RC_CMD ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,void*,size_t,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static
int hwarc_cmd(struct uwb_rc *uwb_rc, const struct uwb_rccb *cmd, size_t cmd_size)
{
 struct hwarc *hwarc = uwb_rc->priv;
 return usb_control_msg(
  hwarc->usb_dev, usb_sndctrlpipe(hwarc->usb_dev, 0),
  WA_EXEC_RC_CMD, USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
  0, hwarc->usb_iface->cur_altsetting->desc.bInterfaceNumber,
  (void *) cmd, cmd_size, 100 );
}
