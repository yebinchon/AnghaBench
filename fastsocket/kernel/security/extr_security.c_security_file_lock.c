
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_2__ {int (* file_lock ) (struct file*,unsigned int) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct file*,unsigned int) ;

int security_file_lock(struct file *file, unsigned int cmd)
{
 return security_ops->file_lock(file, cmd);
}
