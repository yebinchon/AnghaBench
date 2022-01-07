
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct iio_dev {int num_interrupt_lines; TYPE_2__* event_interfaces; TYPE_2__* interrupts; int * event_attrs; TYPE_1__ dev; } ;
struct TYPE_5__ {int id; } ;


 int iio_event_idr ;
 int iio_free_ev_int (TYPE_2__*) ;
 int iio_free_idr_val (int *,int ) ;
 int kfree (TYPE_2__*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void iio_device_unregister_eventset(struct iio_dev *dev_info)
{
 int i;

 if (dev_info->num_interrupt_lines == 0)
  return;
 for (i = 0; i < dev_info->num_interrupt_lines; i++)
  sysfs_remove_group(&dev_info->dev.kobj,
       &dev_info->event_attrs[i]);

 for (i = 0; i < dev_info->num_interrupt_lines; i++) {
  iio_free_idr_val(&iio_event_idr,
     dev_info->event_interfaces[i].id);
  iio_free_ev_int(&dev_info->event_interfaces[i]);
 }
 kfree(dev_info->interrupts);
 kfree(dev_info->event_interfaces);
}
