
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_serial_port {TYPE_1__* serial; int dev; } ;
struct klsi_105_port_settings {int unknown2; int unknown1; int databits; int baudrate; int pktlen; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {TYPE_2__* dev; } ;


 int KL5KUSB105A_SIO_SET_DATA ;
 int KLSI_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int ,int ,int ,int ,int ) ;
 int usb_control_msg (TYPE_2__*,int ,int ,int,int ,int ,struct klsi_105_port_settings*,int,int ) ;
 int usb_sndctrlpipe (TYPE_2__*,int ) ;

__attribute__((used)) static int klsi_105_chg_port_settings(struct usb_serial_port *port,
          struct klsi_105_port_settings *settings)
{
 int rc;

 rc = usb_control_msg(port->serial->dev,
   usb_sndctrlpipe(port->serial->dev, 0),
   KL5KUSB105A_SIO_SET_DATA,
   USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_INTERFACE,
   0,
   0,
   settings,
   sizeof(struct klsi_105_port_settings),
   KLSI_TIMEOUT);
 if (rc < 0)
  dev_err(&port->dev,
   "Change port settings failed (error = %d)\n", rc);
 dev_info(&port->serial->dev->dev,
   "%d byte block, baudrate %x, databits %d, u1 %d, u2 %d\n",
   settings->pktlen, settings->baudrate, settings->databits,
   settings->unknown1, settings->unknown2);
 return rc;
}
