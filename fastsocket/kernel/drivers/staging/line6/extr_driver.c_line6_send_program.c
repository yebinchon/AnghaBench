
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6 {int ifcdev; int ep_control_write; int usbdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 unsigned char LINE6_CHANNEL_HOST ;
 unsigned char LINE6_PROGRAM_CHANGE ;
 int LINE6_TIMEOUT ;
 int dev_err (int ,char*,...) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int line6_write_hexdump (struct usb_line6*,char,unsigned char*,int) ;
 int usb_interrupt_msg (int ,int ,unsigned char*,int,unsigned int*,int) ;
 int usb_sndintpipe (int ,int ) ;

int line6_send_program(struct usb_line6 *line6, int value)
{
 int retval;
 unsigned char *buffer;
 unsigned int partial;

 buffer = kmalloc(2, GFP_KERNEL);

 if (!buffer) {
  dev_err(line6->ifcdev, "out of memory\n");
  return -ENOMEM;
 }

 buffer[0] = LINE6_PROGRAM_CHANGE | LINE6_CHANNEL_HOST;
 buffer[1] = value;





 retval = usb_interrupt_msg(line6->usbdev,
       usb_sndintpipe(line6->usbdev,
        line6->ep_control_write),
       buffer, 2, &partial, LINE6_TIMEOUT * HZ);

 if (retval)
  dev_err(line6->ifcdev, "usb_interrupt_msg failed (%d)\n", retval);

 kfree(buffer);
 return retval;
}
