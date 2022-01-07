
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct usb_serial {int num_ports; int * port; TYPE_2__* dev; } ;
struct spcp8x5_private {int type; int * buf; int delta_msr_wait; int lock; } ;
typedef enum spcp8x5_type { ____Placeholder_spcp8x5_type } spcp8x5_type ;
struct TYPE_3__ {scalar_t__ idVendor; int idProduct; } ;
struct TYPE_4__ {int dev; TYPE_1__ descriptor; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SPCP825_007_TYPE ;
 int SPCP825_008_TYPE ;
 int SPCP825_INTERMATIC_TYPE ;
 int SPCP825_PHILIP_TYPE ;
 int SPCP835_TYPE ;
 int SPCP8x5_BUF_SIZE ;
 int * alloc_ringbuf (int ) ;
 scalar_t__ cpu_to_le16 (int) ;
 int dev_dbg (int *,char*,int) ;
 int free_ringbuf (int *) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct spcp8x5_private*) ;
 struct spcp8x5_private* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int spin_lock_init (int *) ;
 struct spcp8x5_private* usb_get_serial_port_data (int ) ;
 int usb_set_serial_port_data (int ,struct spcp8x5_private*) ;

__attribute__((used)) static int spcp8x5_startup(struct usb_serial *serial)
{
 struct spcp8x5_private *priv;
 int i;
 enum spcp8x5_type type = SPCP825_007_TYPE;
 u16 product = le16_to_cpu(serial->dev->descriptor.idProduct);

 if (product == 0x0201)
  type = SPCP825_007_TYPE;
 else if (product == 0x0231)
  type = SPCP835_TYPE;
 else if (product == 0x0235)
  type = SPCP825_008_TYPE;
 else if (product == 0x0204)
  type = SPCP825_INTERMATIC_TYPE;
 else if (product == 0x0471 &&
   serial->dev->descriptor.idVendor == cpu_to_le16(0x081e))
  type = SPCP825_PHILIP_TYPE;
 dev_dbg(&serial->dev->dev, "device type = %d\n", (int)type);

 for (i = 0; i < serial->num_ports; ++i) {
  priv = kzalloc(sizeof(struct spcp8x5_private), GFP_KERNEL);
  if (!priv)
   goto cleanup;

  spin_lock_init(&priv->lock);
  priv->buf = alloc_ringbuf(SPCP8x5_BUF_SIZE);
  if (priv->buf == ((void*)0))
   goto cleanup2;

  init_waitqueue_head(&priv->delta_msr_wait);
  priv->type = type;
  usb_set_serial_port_data(serial->port[i] , priv);

 }

 return 0;

cleanup2:
 kfree(priv);
cleanup:
 for (--i; i >= 0; --i) {
  priv = usb_get_serial_port_data(serial->port[i]);
  free_ringbuf(priv->buf);
  kfree(priv);
  usb_set_serial_port_data(serial->port[i] , ((void*)0));
 }
 return -ENOMEM;
}
