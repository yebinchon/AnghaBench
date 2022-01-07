
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ftdi {int kref; int status_work; } ;


 int kref_get (int *) ;
 scalar_t__ queue_delayed_work (int ,int *,unsigned int) ;
 int status_queue ;

__attribute__((used)) static void ftdi_status_queue_work(struct usb_ftdi *ftdi, unsigned int delta)
{
 if (queue_delayed_work(status_queue, &ftdi->status_work, delta))
  kref_get(&ftdi->kref);
}
