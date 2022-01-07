
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned short u8 ;
struct usb_device {int dev; } ;
typedef enum spcp8x5_type { ____Placeholder_spcp8x5_type } spcp8x5_type ;


 int EPERM ;
 int SET_UART_STATUS ;
 int SET_UART_STATUS_TYPE ;
 int SPCP825_007_TYPE ;
 int dev_dbg (int *,char*,int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,unsigned short,int,int *,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int spcp8x5_set_ctrlLine(struct usb_device *dev, u8 value,
    enum spcp8x5_type type)
{
 int retval;
 u8 mcr = 0 ;

 if (type == SPCP825_007_TYPE)
  return -EPERM;

 mcr = (unsigned short)value;
 retval = usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
     SET_UART_STATUS_TYPE, SET_UART_STATUS,
     mcr, 0x04, ((void*)0), 0, 100);
 if (retval != 0)
  dev_dbg(&dev->dev, "usb_control_msg return %#x\n", retval);
 return retval;
}
