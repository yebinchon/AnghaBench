
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {int (* dentry_open ) (struct file*,struct cred const*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct file*,struct cred const*) ;

int security_dentry_open(struct file *file, const struct cred *cred)
{
 return security_ops->dentry_open(file, cred);
}
