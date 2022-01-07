
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct comedi_device_file_info {TYPE_1__* device; } ;
struct comedi_devconfig {char* board_name; int options; } ;
typedef int it ;
struct TYPE_2__ {int mutex; } ;


 int BUG_ON (int) ;
 int COMEDI_NAMELEN ;
 unsigned int COMEDI_NDEVCONFOPTS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int comedi_alloc_board_minor (struct device*) ;
 int comedi_autoconfig ;
 int comedi_device_attach (TYPE_1__*,struct comedi_devconfig*) ;
 int comedi_free_board_minor (int) ;
 struct comedi_device_file_info* comedi_get_device_file_info (int) ;
 int dev_set_drvdata (struct device*,unsigned int*) ;
 int kfree (unsigned int*) ;
 unsigned int* kmalloc (int,int ) ;
 int memcpy (int ,int const*,unsigned int) ;
 int memset (struct comedi_devconfig*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strncpy (char*,char const*,int) ;

int comedi_auto_config(struct device *hardware_device, const char *board_name,
         const int *options, unsigned num_options)
{
 struct comedi_devconfig it;
 int minor;
 struct comedi_device_file_info *dev_file_info;
 int retval;
 unsigned *private_data = ((void*)0);

 if (!comedi_autoconfig) {
  dev_set_drvdata(hardware_device, ((void*)0));
  return 0;
 }

 minor = comedi_alloc_board_minor(hardware_device);
 if (minor < 0)
  return minor;

 private_data = kmalloc(sizeof(unsigned), GFP_KERNEL);
 if (private_data == ((void*)0)) {
  retval = -ENOMEM;
  goto cleanup;
 }
 *private_data = minor;
 dev_set_drvdata(hardware_device, private_data);

 dev_file_info = comedi_get_device_file_info(minor);

 memset(&it, 0, sizeof(it));
 strncpy(it.board_name, board_name, COMEDI_NAMELEN);
 it.board_name[COMEDI_NAMELEN - 1] = '\0';
 BUG_ON(num_options > COMEDI_NDEVCONFOPTS);
 memcpy(it.options, options, num_options * sizeof(int));

 mutex_lock(&dev_file_info->device->mutex);
 retval = comedi_device_attach(dev_file_info->device, &it);
 mutex_unlock(&dev_file_info->device->mutex);

cleanup:
 if (retval < 0) {
  kfree(private_data);
  comedi_free_board_minor(minor);
 }
 return retval;
}
