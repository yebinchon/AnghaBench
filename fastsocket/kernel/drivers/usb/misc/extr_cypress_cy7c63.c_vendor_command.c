
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cypress {unsigned char* port; TYPE_1__* udev; } ;
struct TYPE_3__ {int dev; } ;


 int CYPRESS_MAX_REQSIZE ;

 unsigned char CYPRESS_READ_PORT_ID0 ;
 unsigned char CYPRESS_READ_PORT_ID1 ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_OTHER ;
 int USB_TYPE_VENDOR ;
 int dev_dbg (int *,char*,unsigned char) ;
 int dev_err (int *,char*) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int ,int ) ;
 int usb_control_msg (TYPE_1__*,unsigned int,unsigned char,int,unsigned char,unsigned char,unsigned char*,int ,int ) ;
 unsigned int usb_rcvctrlpipe (TYPE_1__*,int ) ;

__attribute__((used)) static int vendor_command(struct cypress *dev, unsigned char request,
     unsigned char address, unsigned char data)
{
 int retval = 0;
 unsigned int pipe;
 unsigned char *iobuf;


 iobuf = kzalloc(CYPRESS_MAX_REQSIZE, GFP_KERNEL);
 if (!iobuf) {
  dev_err(&dev->udev->dev, "Out of memory!\n");
  retval = -ENOMEM;
  goto error;
 }

 dev_dbg(&dev->udev->dev, "Sending usb_control_msg (data: %d)\n", data);


 pipe = usb_rcvctrlpipe(dev->udev, 0);
 retval = usb_control_msg(dev->udev, pipe, request,
     USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_OTHER,
     address, data, iobuf, CYPRESS_MAX_REQSIZE,
     USB_CTRL_GET_TIMEOUT);


 switch (request) {
  case 128:
   if (address == CYPRESS_READ_PORT_ID0) {
    dev->port[0] = iobuf[1];
    dev_dbg(&dev->udev->dev,
     "READ_PORT0 returned: %d\n",
     dev->port[0]);
   }
   else if (address == CYPRESS_READ_PORT_ID1) {
    dev->port[1] = iobuf[1];
    dev_dbg(&dev->udev->dev,
     "READ_PORT1 returned: %d\n",
     dev->port[1]);
   }
   break;
 }

 kfree(iobuf);
error:
 return retval;
}
