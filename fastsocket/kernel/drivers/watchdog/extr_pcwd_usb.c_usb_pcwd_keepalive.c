
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_pcwd_private {int dummy; } ;


 int CMD_TRIGGER ;
 int usb_pcwd_send_command (struct usb_pcwd_private*,int ,unsigned char*,unsigned char*) ;

__attribute__((used)) static int usb_pcwd_keepalive(struct usb_pcwd_private *usb_pcwd)
{
 unsigned char dummy;


 usb_pcwd_send_command(usb_pcwd, CMD_TRIGGER, &dummy, &dummy);

 return 0;
}
