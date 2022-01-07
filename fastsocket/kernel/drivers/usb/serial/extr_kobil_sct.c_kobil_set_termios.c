
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {TYPE_1__* serial; } ;
struct tty_struct {struct ktermios* termios; } ;
struct ktermios {int c_cflag; } ;
struct kobil_private {scalar_t__ device_type; } ;
typedef int speed_t ;
struct TYPE_2__ {int dev; } ;


 int CMSPAR ;
 int CSTOPB ;
 int GFP_KERNEL ;
 scalar_t__ KOBIL_KAAN_SIM_PRODUCT_ID ;
 int KOBIL_TIMEOUT ;
 scalar_t__ KOBIL_USBTWIN_PRODUCT_ID ;
 int PARENB ;
 int PARODD ;
 unsigned short SUSBCR_SBR_1200 ;
 unsigned short SUSBCR_SBR_9600 ;
 unsigned short SUSBCR_SPASB_1StopBit ;
 unsigned short SUSBCR_SPASB_2StopBits ;
 unsigned short SUSBCR_SPASB_EvenParity ;
 unsigned short SUSBCR_SPASB_NoParity ;
 unsigned short SUSBCR_SPASB_OddParity ;
 int SUSBCRequest_SetBaudRateParityAndStopBits ;
 int USB_DIR_OUT ;
 int USB_RECIP_ENDPOINT ;
 int USB_TYPE_VENDOR ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int sprintf (void*,char*,int) ;
 int strcat (void*,char*) ;
 int tty_encode_baud_rate (struct tty_struct*,int,int) ;
 int tty_get_baud_rate (struct tty_struct*) ;
 int usb_control_msg (int ,int ,int ,int,unsigned short,int ,void*,int ,int ) ;
 struct kobil_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static void kobil_set_termios(struct tty_struct *tty,
   struct usb_serial_port *port, struct ktermios *old)
{
 struct kobil_private *priv;
 int result;
 unsigned short urb_val = 0;
 int c_cflag = tty->termios->c_cflag;
 speed_t speed;
 void *settings;

 priv = usb_get_serial_port_data(port);
 if (priv->device_type == KOBIL_USBTWIN_PRODUCT_ID ||
   priv->device_type == KOBIL_KAAN_SIM_PRODUCT_ID) {

  *tty->termios = *old;
  return;
 }

 speed = tty_get_baud_rate(tty);
 switch (speed) {
 case 1200:
  urb_val = SUSBCR_SBR_1200;
  break;
 default:
  speed = 9600;
 case 9600:
  urb_val = SUSBCR_SBR_9600;
  break;
 }
 urb_val |= (c_cflag & CSTOPB) ? SUSBCR_SPASB_2StopBits :
       SUSBCR_SPASB_1StopBit;

 settings = kzalloc(50, GFP_KERNEL);
 if (!settings)
  return;

 sprintf(settings, "%d ", speed);

 if (c_cflag & PARENB) {
  if (c_cflag & PARODD) {
   urb_val |= SUSBCR_SPASB_OddParity;
   strcat(settings, "Odd Parity");
  } else {
   urb_val |= SUSBCR_SPASB_EvenParity;
   strcat(settings, "Even Parity");
  }
 } else {
  urb_val |= SUSBCR_SPASB_NoParity;
  strcat(settings, "No Parity");
 }
 tty->termios->c_cflag &= ~CMSPAR;
 tty_encode_baud_rate(tty, speed, speed);

 result = usb_control_msg(port->serial->dev,
    usb_rcvctrlpipe(port->serial->dev, 0),
    SUSBCRequest_SetBaudRateParityAndStopBits,
    USB_TYPE_VENDOR | USB_RECIP_ENDPOINT | USB_DIR_OUT,
    urb_val,
    0,
    settings,
    0,
    KOBIL_TIMEOUT
  );
 kfree(settings);
}
