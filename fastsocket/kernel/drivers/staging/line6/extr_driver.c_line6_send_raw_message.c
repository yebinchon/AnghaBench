
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6 {int ifcdev; int ep_control_write; int usbdev; scalar_t__ max_packet_size; } ;


 int HZ ;
 int LINE6_TIMEOUT ;
 int dev_err (int ,char*,int) ;
 int line6_write_hexdump (struct usb_line6*,char,char const*,int) ;
 int min (scalar_t__,int) ;
 int usb_interrupt_msg (int ,int ,char*,int,int*,int) ;
 int usb_sndintpipe (int ,int ) ;

int line6_send_raw_message(struct usb_line6 *line6, const char *buffer,
      int size)
{
 int i, done = 0;





 for (i = 0; i < size; i += line6->max_packet_size) {
  int partial;
  const char *frag_buf = buffer + i;
  int frag_size = min(line6->max_packet_size, size - i);
  int retval;

  retval = usb_interrupt_msg(line6->usbdev,
        usb_sndintpipe(line6->usbdev,
         line6->ep_control_write),
        (char *)frag_buf, frag_size,
        &partial, LINE6_TIMEOUT * HZ);

  if (retval) {
   dev_err(line6->ifcdev,
    "usb_interrupt_msg failed (%d)\n", retval);
   break;
  }

  done += frag_size;
 }

 return done;
}
