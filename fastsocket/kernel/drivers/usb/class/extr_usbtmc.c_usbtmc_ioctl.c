
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtmc_device_data {int io_mutex; scalar_t__ zombie; } ;
struct file {struct usbtmc_device_data* private_data; } ;


 int EBADRQC ;
 int ENODEV ;






 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usbtmc_ioctl_abort_bulk_in (struct usbtmc_device_data*) ;
 int usbtmc_ioctl_abort_bulk_out (struct usbtmc_device_data*) ;
 int usbtmc_ioctl_clear (struct usbtmc_device_data*) ;
 int usbtmc_ioctl_clear_in_halt (struct usbtmc_device_data*) ;
 int usbtmc_ioctl_clear_out_halt (struct usbtmc_device_data*) ;
 int usbtmc_ioctl_indicator_pulse (struct usbtmc_device_data*) ;

__attribute__((used)) static long usbtmc_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 struct usbtmc_device_data *data;
 int retval = -EBADRQC;

 data = file->private_data;
 mutex_lock(&data->io_mutex);
 if (data->zombie) {
  retval = -ENODEV;
  goto skip_io_on_zombie;
 }

 switch (cmd) {
 case 129:
  retval = usbtmc_ioctl_clear_out_halt(data);
  break;

 case 130:
  retval = usbtmc_ioctl_clear_in_halt(data);
  break;

 case 128:
  retval = usbtmc_ioctl_indicator_pulse(data);
  break;

 case 131:
  retval = usbtmc_ioctl_clear(data);
  break;

 case 132:
  retval = usbtmc_ioctl_abort_bulk_out(data);
  break;

 case 133:
  retval = usbtmc_ioctl_abort_bulk_in(data);
  break;
 }

skip_io_on_zombie:
 mutex_unlock(&data->io_mutex);
 return retval;
}
