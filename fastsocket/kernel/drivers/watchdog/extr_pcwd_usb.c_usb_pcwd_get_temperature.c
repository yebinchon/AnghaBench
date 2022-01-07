
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_pcwd_private {int dummy; } ;


 int CMD_READ_TEMP ;
 int usb_pcwd_send_command (struct usb_pcwd_private*,int ,unsigned char*,unsigned char*) ;

__attribute__((used)) static int usb_pcwd_get_temperature(struct usb_pcwd_private *usb_pcwd,
       int *temperature)
{
 unsigned char msb, lsb;

 usb_pcwd_send_command(usb_pcwd, CMD_READ_TEMP, &msb, &lsb);





 *temperature = (lsb * 9 / 5) + 32;

 return 0;
}
