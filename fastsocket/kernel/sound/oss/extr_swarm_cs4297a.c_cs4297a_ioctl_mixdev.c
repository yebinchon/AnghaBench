
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct cs4297a_state {int dummy; } ;


 int mixer_ioctl (struct cs4297a_state*,unsigned int,unsigned long) ;

__attribute__((used)) static int cs4297a_ioctl_mixdev(struct inode *inode, struct file *file,
          unsigned int cmd, unsigned long arg)
{
 return mixer_ioctl((struct cs4297a_state *) file->private_data, cmd,
      arg);
}
