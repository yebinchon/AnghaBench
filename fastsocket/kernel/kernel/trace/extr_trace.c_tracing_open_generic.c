
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int private_data; } ;


 int ENODEV ;
 scalar_t__ tracing_disabled ;

int tracing_open_generic(struct inode *inode, struct file *filp)
{
 if (tracing_disabled)
  return -ENODEV;

 filp->private_data = inode->i_private;
 return 0;
}
