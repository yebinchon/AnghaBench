
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {int (* kernel_create_files_as ) (struct cred*,struct inode*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct cred*,struct inode*) ;

int security_kernel_create_files_as(struct cred *new, struct inode *inode)
{
 return security_ops->kernel_create_files_as(new, inode);
}
