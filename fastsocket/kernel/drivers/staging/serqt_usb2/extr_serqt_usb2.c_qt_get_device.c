
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
struct qt_get_device_data {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QT_SET_GET_DEVICE ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int memcpy (struct qt_get_device_data*,unsigned char*,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,unsigned char*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int qt_get_device(struct usb_serial *serial,
    struct qt_get_device_data *device_data)
{
 int result;
 unsigned char *transfer_buffer;

 transfer_buffer =
     kmalloc(sizeof(struct qt_get_device_data), GFP_KERNEL);
 if (!transfer_buffer)
  return -ENOMEM;

 result = usb_control_msg(serial->dev, usb_rcvctrlpipe(serial->dev, 0),
     QT_SET_GET_DEVICE, 0xc0, 0, 0,
     transfer_buffer,
     sizeof(struct qt_get_device_data), 300);
 if (result > 0)
  memcpy(device_data, transfer_buffer,
         sizeof(struct qt_get_device_data));
 kfree(transfer_buffer);

 return result;
}
