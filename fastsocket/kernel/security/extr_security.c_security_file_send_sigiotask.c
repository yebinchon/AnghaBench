
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct fown_struct {int dummy; } ;
struct TYPE_2__ {int (* file_send_sigiotask ) (struct task_struct*,struct fown_struct*,int) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct task_struct*,struct fown_struct*,int) ;

int security_file_send_sigiotask(struct task_struct *tsk,
      struct fown_struct *fown, int sig)
{
 return security_ops->file_send_sigiotask(tsk, fown, sig);
}
