
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ctl_file {int fasync; } ;
struct file {struct snd_ctl_file* private_data; } ;


 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int snd_ctl_fasync(int fd, struct file * file, int on)
{
 struct snd_ctl_file *ctl;

 ctl = file->private_data;
 return fasync_helper(fd, file, on, &ctl->fasync);
}
