
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {TYPE_1__* f_dentry; } ;
struct comedi_device_file_info {struct comedi_device* device; } ;
struct comedi_device {int async_queue; } ;
struct TYPE_2__ {int d_inode; } ;


 struct comedi_device_file_info* comedi_get_device_file_info (unsigned int const) ;
 int fasync_helper (int,struct file*,int,int *) ;
 unsigned int iminor (int ) ;

__attribute__((used)) static int comedi_fasync(int fd, struct file *file, int on)
{
 const unsigned minor = iminor(file->f_dentry->d_inode);
 struct comedi_device_file_info *dev_file_info =
     comedi_get_device_file_info(minor);

 struct comedi_device *dev = dev_file_info->device;

 return fasync_helper(fd, file, on, &dev->async_queue);
}
