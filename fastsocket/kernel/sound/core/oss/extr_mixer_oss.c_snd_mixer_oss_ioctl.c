
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer_oss_file {int dummy; } ;
struct file {scalar_t__ private_data; } ;


 long snd_mixer_oss_ioctl1 (struct snd_mixer_oss_file*,unsigned int,unsigned long) ;

__attribute__((used)) static long snd_mixer_oss_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 return snd_mixer_oss_ioctl1((struct snd_mixer_oss_file *) file->private_data, cmd, arg);
}
