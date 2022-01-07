
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_devinfo {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct seq_oss_devinfo* private_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int register_mutex ;
 int snd_seq_oss_drain_write (struct seq_oss_devinfo*) ;
 int snd_seq_oss_release (struct seq_oss_devinfo*) ;

__attribute__((used)) static int
odev_release(struct inode *inode, struct file *file)
{
 struct seq_oss_devinfo *dp;

 if ((dp = file->private_data) == ((void*)0))
  return 0;

 snd_seq_oss_drain_write(dp);

 mutex_lock(&register_mutex);
 snd_seq_oss_release(dp);
 mutex_unlock(&register_mutex);

 return 0;
}
