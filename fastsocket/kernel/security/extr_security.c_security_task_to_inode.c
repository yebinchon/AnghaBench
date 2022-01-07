
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int (* task_to_inode ) (struct task_struct*,struct inode*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct task_struct*,struct inode*) ;

void security_task_to_inode(struct task_struct *p, struct inode *inode)
{
 security_ops->task_to_inode(p, inode);
}
