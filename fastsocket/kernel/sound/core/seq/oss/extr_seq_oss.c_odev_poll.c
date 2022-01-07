
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_devinfo {int dummy; } ;
struct file {struct seq_oss_devinfo* private_data; } ;
typedef int poll_table ;


 unsigned int ENXIO ;
 scalar_t__ snd_BUG_ON (int) ;
 unsigned int snd_seq_oss_poll (struct seq_oss_devinfo*,struct file*,int *) ;

__attribute__((used)) static unsigned int
odev_poll(struct file *file, poll_table * wait)
{
 struct seq_oss_devinfo *dp;
 dp = file->private_data;
 if (snd_BUG_ON(!dp))
  return -ENXIO;
 return snd_seq_oss_poll(dp, file, wait);
}
