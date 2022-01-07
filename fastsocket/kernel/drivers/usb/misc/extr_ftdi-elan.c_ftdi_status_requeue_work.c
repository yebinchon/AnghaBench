
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ftdi {int kref; int status_work; } ;


 int ftdi_elan_delete ;
 int kref_put (int *,int ) ;
 int queue_delayed_work (int ,int *,unsigned int) ;
 int status_queue ;

__attribute__((used)) static void ftdi_status_requeue_work(struct usb_ftdi *ftdi, unsigned int delta)
{
 if (!queue_delayed_work(status_queue, &ftdi->status_work, delta))
  kref_put(&ftdi->kref, ftdi_elan_delete);
}
