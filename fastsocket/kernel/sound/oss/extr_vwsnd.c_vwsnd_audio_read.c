
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io_mutex; } ;
typedef TYPE_1__ vwsnd_dev_t ;
struct file {TYPE_1__* private_data; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vwsnd_audio_do_read (struct file*,char*,size_t,int *) ;

__attribute__((used)) static ssize_t vwsnd_audio_read(struct file *file,
    char *buffer,
    size_t count,
    loff_t *ppos)
{
 vwsnd_dev_t *devc = file->private_data;
 ssize_t ret;

 mutex_lock(&devc->io_mutex);
 ret = vwsnd_audio_do_read(file, buffer, count, ppos);
 mutex_unlock(&devc->io_mutex);
 return ret;
}
