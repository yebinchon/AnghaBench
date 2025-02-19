
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct iio_interrupt {int dummy; } ;
struct iio_event_interface {int dummy; } ;
struct TYPE_10__ {int kobj; } ;
struct iio_dev {int num_interrupt_lines; TYPE_3__* event_interfaces; TYPE_3__* interrupts; TYPE_1__* event_attrs; TYPE_5__ dev; int driver_module; } ;
struct TYPE_9__ {int id; scalar_t__ _attrname; scalar_t__ _name; int owner; } ;
struct TYPE_8__ {char const* name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __iio_add_event_config_attrs (struct iio_dev*,int) ;
 int __iio_remove_event_config_attrs (struct iio_dev*,int) ;
 int dev_err (TYPE_5__*,char*) ;
 int iio_event_idr ;
 int iio_free_ev_int (TYPE_3__*) ;
 int iio_free_idr_val (int *,int) ;
 int iio_get_new_idr_val (int *) ;
 int iio_setup_ev_int (TYPE_3__*,char const*,int ,TYPE_5__*) ;
 int kfree (TYPE_3__*) ;
 void* kzalloc (int,int ) ;
 int snprintf (scalar_t__,int,char*,int) ;
 int sysfs_create_group (int *,TYPE_1__*) ;
 int sysfs_remove_group (int *,TYPE_1__*) ;

__attribute__((used)) static int iio_device_register_eventset(struct iio_dev *dev_info)
{
 int ret = 0, i, j;

 if (dev_info->num_interrupt_lines == 0)
  return 0;

 dev_info->event_interfaces =
  kzalloc(sizeof(struct iio_event_interface)
   *dev_info->num_interrupt_lines,
   GFP_KERNEL);
 if (dev_info->event_interfaces == ((void*)0)) {
  ret = -ENOMEM;
  goto error_ret;
 }

 dev_info->interrupts = kzalloc(sizeof(struct iio_interrupt *)
           *dev_info->num_interrupt_lines,
           GFP_KERNEL);
 if (dev_info->interrupts == ((void*)0)) {
  ret = -ENOMEM;
  goto error_free_event_interfaces;
 }

 for (i = 0; i < dev_info->num_interrupt_lines; i++) {
  dev_info->event_interfaces[i].owner = dev_info->driver_module;
  ret = iio_get_new_idr_val(&iio_event_idr);
  if (ret)
   goto error_free_setup_ev_ints;
  else
   dev_info->event_interfaces[i].id = ret;

  snprintf(dev_info->event_interfaces[i]._name, 20,
    "event_line%d",
   dev_info->event_interfaces[i].id);

  ret = iio_setup_ev_int(&dev_info->event_interfaces[i],
           (const char *)(dev_info
            ->event_interfaces[i]
            ._name),
           dev_info->driver_module,
           &dev_info->dev);
  if (ret) {
   dev_err(&dev_info->dev,
    "Could not get chrdev interface\n");
   iio_free_idr_val(&iio_event_idr,
      dev_info->event_interfaces[i].id);
   goto error_free_setup_ev_ints;
  }
 }

 for (i = 0; i < dev_info->num_interrupt_lines; i++) {
  snprintf(dev_info->event_interfaces[i]._attrname, 20,
   "event_line%d_sources", i);
  dev_info->event_attrs[i].name
   = (const char *)
   (dev_info->event_interfaces[i]._attrname);
  ret = sysfs_create_group(&dev_info->dev.kobj,
      &dev_info->event_attrs[i]);
  if (ret) {
   dev_err(&dev_info->dev,
    "Failed to register sysfs for event attrs");
   goto error_remove_sysfs_interfaces;
  }
 }

 for (i = 0; i < dev_info->num_interrupt_lines; i++) {
  ret = __iio_add_event_config_attrs(dev_info, i);
  if (ret)
   goto error_unregister_config_attrs;
 }

 return 0;

error_unregister_config_attrs:
 for (j = 0; j < i; j++)
  __iio_remove_event_config_attrs(dev_info, i);
 i = dev_info->num_interrupt_lines - 1;
error_remove_sysfs_interfaces:
 for (j = 0; j < i; j++)
  sysfs_remove_group(&dev_info->dev.kobj,
       &dev_info->event_attrs[j]);
 i = dev_info->num_interrupt_lines - 1;
error_free_setup_ev_ints:
 for (j = 0; j < i; j++) {
  iio_free_idr_val(&iio_event_idr,
     dev_info->event_interfaces[i].id);
  iio_free_ev_int(&dev_info->event_interfaces[j]);
 }
 kfree(dev_info->interrupts);
error_free_event_interfaces:
 kfree(dev_info->event_interfaces);
error_ret:

 return ret;
}
