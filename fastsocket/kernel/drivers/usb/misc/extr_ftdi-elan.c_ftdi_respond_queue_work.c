
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ftdi {int kref; int respond_work; } ;


 int kref_get (int *) ;
 scalar_t__ queue_delayed_work (int ,int *,unsigned int) ;
 int respond_queue ;

__attribute__((used)) static void ftdi_respond_queue_work(struct usb_ftdi *ftdi, unsigned int delta)
{
 if (queue_delayed_work(respond_queue, &ftdi->respond_work, delta))
  kref_get(&ftdi->kref);
}
