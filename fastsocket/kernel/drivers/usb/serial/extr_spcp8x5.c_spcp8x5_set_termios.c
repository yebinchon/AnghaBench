
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usb_serial_port {int dev; struct usb_serial* serial; } ;
struct usb_serial {int dev; } ;
struct tty_struct {TYPE_1__* termios; } ;
struct spcp8x5_private {int type; int lock; int line_control; } ;
struct ktermios {unsigned int c_cflag; } ;
struct TYPE_2__ {unsigned int c_cflag; } ;


 unsigned int B0 ;
 unsigned int CBAUD ;
 unsigned int CRTSCTS ;




 unsigned int CSIZE ;
 unsigned int CSTOPB ;
 int MCR_DTR ;
 int MCR_RTS ;
 unsigned int PARENB ;
 unsigned int PARODD ;
 int SET_UART_FORMAT ;
 unsigned char SET_UART_FORMAT_PAR_EVEN ;
 unsigned char SET_UART_FORMAT_PAR_NONE ;
 unsigned char SET_UART_FORMAT_PAR_ODD ;
 unsigned char SET_UART_FORMAT_SIZE_5 ;
 unsigned char SET_UART_FORMAT_SIZE_6 ;
 unsigned char SET_UART_FORMAT_SIZE_7 ;
 unsigned char SET_UART_FORMAT_SIZE_8 ;
 unsigned char SET_UART_FORMAT_STOP_1 ;
 unsigned char SET_UART_FORMAT_STOP_2 ;
 int SET_UART_FORMAT_TYPE ;
 int SET_WORKING_MODE_U2C ;
 int dbg (char*,int) ;
 int dev_err (int *,char*,...) ;
 int spcp8x5_set_ctrlLine (int ,int ,int ) ;
 int spcp8x5_set_workMode (int ,int,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_get_baud_rate (struct tty_struct*) ;
 int tty_termios_hw_change (TYPE_1__*,struct ktermios*) ;
 int usb_control_msg (int ,int ,int ,int ,unsigned short,int ,int *,int ,int) ;
 struct spcp8x5_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void spcp8x5_set_termios(struct tty_struct *tty,
  struct usb_serial_port *port, struct ktermios *old_termios)
{
 struct usb_serial *serial = port->serial;
 struct spcp8x5_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;
 unsigned int cflag = tty->termios->c_cflag;
 unsigned int old_cflag = old_termios->c_cflag;
 unsigned short uartdata;
 unsigned char buf[2] = {0, 0};
 int baud;
 int i;
 u8 control;



 if (!tty_termios_hw_change(tty->termios, old_termios))
  return;


 spin_lock_irqsave(&priv->lock, flags);
 control = priv->line_control;
 if ((old_cflag & CBAUD) == B0) {
  priv->line_control |= MCR_DTR;
  if (!(old_cflag & CRTSCTS))
   priv->line_control |= MCR_RTS;
 }
 if (control != priv->line_control) {
  control = priv->line_control;
  spin_unlock_irqrestore(&priv->lock, flags);
  spcp8x5_set_ctrlLine(serial->dev, control , priv->type);
 } else {
  spin_unlock_irqrestore(&priv->lock, flags);
 }


 baud = tty_get_baud_rate(tty);
 switch (baud) {
 case 300: buf[0] = 0x00; break;
 case 600: buf[0] = 0x01; break;
 case 1200: buf[0] = 0x02; break;
 case 2400: buf[0] = 0x03; break;
 case 4800: buf[0] = 0x04; break;
 case 9600: buf[0] = 0x05; break;
 case 19200: buf[0] = 0x07; break;
 case 38400: buf[0] = 0x09; break;
 case 57600: buf[0] = 0x0a; break;
 case 115200: buf[0] = 0x0b; break;
 case 230400: buf[0] = 0x0c; break;
 case 460800: buf[0] = 0x0d; break;
 case 921600: buf[0] = 0x0e; break;


 case 3000000: buf[0] = 0x11; break;

 case 0:
 case 1000000:
   buf[0] = 0x0b; break;
 default:
  dev_err(&port->dev, "spcp825 driver does not support the "
   "baudrate requested, using default of 9600.\n");
 }


 if (cflag & CSIZE) {
  switch (cflag & CSIZE) {
  case 131:
   buf[1] |= SET_UART_FORMAT_SIZE_5;
   break;
  case 130:
   buf[1] |= SET_UART_FORMAT_SIZE_6;
   break;
  case 129:
   buf[1] |= SET_UART_FORMAT_SIZE_7;
   break;
  default:
  case 128:
   buf[1] |= SET_UART_FORMAT_SIZE_8;
   break;
  }
 }


 buf[1] |= (cflag & CSTOPB) ? SET_UART_FORMAT_STOP_2 :
         SET_UART_FORMAT_STOP_1;


 if (cflag & PARENB) {
  buf[1] |= (cflag & PARODD) ?
  SET_UART_FORMAT_PAR_ODD : SET_UART_FORMAT_PAR_EVEN ;
 } else
  buf[1] |= SET_UART_FORMAT_PAR_NONE;

 uartdata = buf[0] | buf[1]<<8;

 i = usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
       SET_UART_FORMAT_TYPE, SET_UART_FORMAT,
       uartdata, 0, ((void*)0), 0, 100);
 if (i < 0)
  dev_err(&port->dev, "Set UART format %#x failed (error = %d)\n",
   uartdata, i);
 dbg("0x21:0x40:0:0  %d\n", i);

 if (cflag & CRTSCTS) {

  spcp8x5_set_workMode(serial->dev, 0x000a,
         SET_WORKING_MODE_U2C, priv->type);
 }
 return;
}
