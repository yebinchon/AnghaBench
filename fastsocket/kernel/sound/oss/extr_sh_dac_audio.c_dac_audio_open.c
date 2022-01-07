
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; } ;


 int EBUSY ;
 int ENODEV ;
 int FMODE_READ ;
 int dac_audio_start () ;
 int in_use ;

__attribute__((used)) static int dac_audio_open(struct inode *inode, struct file *file)
{
 if (file->f_mode & FMODE_READ)
  return -ENODEV;
 if (in_use)
  return -EBUSY;

 in_use = 1;

 dac_audio_start();

 return 0;
}
