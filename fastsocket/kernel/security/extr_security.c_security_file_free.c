
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_2__ {int (* file_free_security ) (struct file*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct file*) ;

void security_file_free(struct file *file)
{
 security_ops->file_free_security(file);
}
