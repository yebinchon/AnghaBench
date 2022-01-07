
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ftdi {int dummy; } ;


 int ftdi_command_queue_work (struct usb_ftdi*,int ) ;

__attribute__((used)) static void ftdi_elan_kick_command_queue(struct usb_ftdi *ftdi)
{
        ftdi_command_queue_work(ftdi, 0);
        return;
}
