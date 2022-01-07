
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u8 ;
typedef scalar_t__ u16 ;
struct usb_serial_port {TYPE_3__* serial; } ;
struct pl2303_private {unsigned char line_status; int delta_msr_wait; int lock; } ;
struct TYPE_6__ {TYPE_2__* dev; } ;
struct TYPE_4__ {int idProduct; int idVendor; } ;
struct TYPE_5__ {TYPE_1__ descriptor; } ;


 scalar_t__ SIEMENS_PRODUCT_ID_SX1 ;
 scalar_t__ SIEMENS_PRODUCT_ID_X65 ;
 scalar_t__ SIEMENS_PRODUCT_ID_X75 ;
 scalar_t__ SIEMENS_VENDOR_ID ;
 int UART_BREAK_ERROR ;
 unsigned int UART_STATE ;
 scalar_t__ le16_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pl2303_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_serial_handle_break (struct usb_serial_port*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void pl2303_update_line_status(struct usb_serial_port *port,
          unsigned char *data,
          unsigned int actual_length)
{

 struct pl2303_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;
 u8 status_idx = UART_STATE;
 u8 length = UART_STATE + 1;
 u16 idv, idp;

 idv = le16_to_cpu(port->serial->dev->descriptor.idVendor);
 idp = le16_to_cpu(port->serial->dev->descriptor.idProduct);


 if (idv == SIEMENS_VENDOR_ID) {
  if (idp == SIEMENS_PRODUCT_ID_X65 ||
      idp == SIEMENS_PRODUCT_ID_SX1 ||
      idp == SIEMENS_PRODUCT_ID_X75) {

   length = 1;
   status_idx = 0;
  }
 }

 if (actual_length < length)
  return;


 spin_lock_irqsave(&priv->lock, flags);
 priv->line_status = data[status_idx];
 spin_unlock_irqrestore(&priv->lock, flags);
 if (priv->line_status & UART_BREAK_ERROR)
  usb_serial_handle_break(port);
 wake_up_interruptible(&priv->delta_msr_wait);
}
