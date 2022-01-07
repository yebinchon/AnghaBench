
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_devinfo {int dummy; } ;
struct file {struct seq_oss_devinfo* private_data; } ;


 long ENXIO ;
 scalar_t__ snd_BUG_ON (int) ;
 long snd_seq_oss_ioctl (struct seq_oss_devinfo*,unsigned int,unsigned long) ;

__attribute__((used)) static long
odev_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 struct seq_oss_devinfo *dp;
 dp = file->private_data;
 if (snd_BUG_ON(!dp))
  return -ENXIO;
 return snd_seq_oss_ioctl(dp, cmd, arg);
}
