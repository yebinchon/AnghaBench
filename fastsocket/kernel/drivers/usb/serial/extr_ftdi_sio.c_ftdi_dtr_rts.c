
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {TYPE_1__* serial; int dev; } ;
struct ftdi_private {int interface; } ;
struct TYPE_2__ {int disc_mutex; int dev; int disconnected; } ;


 int FTDI_SIO_SET_FLOW_CTRL_REQUEST ;
 int FTDI_SIO_SET_FLOW_CTRL_REQUEST_TYPE ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int WDR_TIMEOUT ;
 int clear_mctrl (struct usb_serial_port*,int) ;
 int dev_err (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_mctrl (struct usb_serial_port*,int) ;
 scalar_t__ usb_control_msg (int ,int ,int ,int ,int ,int ,char*,int ,int ) ;
 struct ftdi_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void ftdi_dtr_rts(struct usb_serial_port *port, int on)
{
 struct ftdi_private *priv = usb_get_serial_port_data(port);
 char buf[1];

 mutex_lock(&port->serial->disc_mutex);
 if (!port->serial->disconnected) {

  if (!on && usb_control_msg(port->serial->dev,
       usb_sndctrlpipe(port->serial->dev, 0),
       FTDI_SIO_SET_FLOW_CTRL_REQUEST,
       FTDI_SIO_SET_FLOW_CTRL_REQUEST_TYPE,
       0, priv->interface, buf, 0,
       WDR_TIMEOUT) < 0) {
       dev_err(&port->dev, "error from flowcontrol urb\n");
  }

  if (on)
   set_mctrl(port, TIOCM_DTR | TIOCM_RTS);
  else
   clear_mctrl(port, TIOCM_DTR | TIOCM_RTS);
 }
 mutex_unlock(&port->serial->disc_mutex);
}
