
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_2__ {int (* file_set_fowner ) (struct file*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct file*) ;

int security_file_set_fowner(struct file *file)
{
 return security_ops->file_set_fowner(file);
}
