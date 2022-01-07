
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io_mutex; } ;
typedef TYPE_1__ vwsnd_dev_t ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vwsnd_audio_do_ioctl (struct inode*,struct file*,unsigned int,unsigned long) ;

__attribute__((used)) static int vwsnd_audio_ioctl(struct inode *inode,
    struct file *file,
    unsigned int cmd,
    unsigned long arg)
{
 vwsnd_dev_t *devc = (vwsnd_dev_t *) file->private_data;
 int ret;

 mutex_lock(&devc->io_mutex);
 ret = vwsnd_audio_do_ioctl(inode, file, cmd, arg);
 mutex_unlock(&devc->io_mutex);
 return ret;
}
