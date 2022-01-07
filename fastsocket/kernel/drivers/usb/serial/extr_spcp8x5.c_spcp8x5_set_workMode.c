
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_device {int dev; } ;
typedef enum spcp8x5_type { ____Placeholder_spcp8x5_type } spcp8x5_type ;


 int SET_WORKING_MODE ;
 int SET_WORKING_MODE_TYPE ;
 int SPCP825_007_TYPE ;
 int dev_dbg (int *,char*,int,...) ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static void spcp8x5_set_workMode(struct usb_device *dev, u16 value,
     u16 index, enum spcp8x5_type type)
{
 int ret;



 if (type == SPCP825_007_TYPE)
  return;

 ret = usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
         SET_WORKING_MODE_TYPE, SET_WORKING_MODE,
         value, index, ((void*)0), 0, 100);
 dev_dbg(&dev->dev, "value = %#x , index = %#x\n", value, index);
 if (ret < 0)
  dev_dbg(&dev->dev,
   "RTSCTS usb_control_msg(enable flowctrl) = %d\n", ret);
}
