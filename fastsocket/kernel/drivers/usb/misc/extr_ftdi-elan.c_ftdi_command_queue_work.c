
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ftdi {int kref; int command_work; } ;


 int command_queue ;
 int kref_get (int *) ;
 scalar_t__ queue_delayed_work (int ,int *,unsigned int) ;

__attribute__((used)) static void ftdi_command_queue_work(struct usb_ftdi *ftdi, unsigned int delta)
{
 if (queue_delayed_work(command_queue, &ftdi->command_work, delta))
  kref_get(&ftdi->kref);
}
