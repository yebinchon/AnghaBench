
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_2__ {int (* file_ioctl ) (struct file*,unsigned int,unsigned long) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct file*,unsigned int,unsigned long) ;

int security_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 return security_ops->file_ioctl(file, cmd, arg);
}
