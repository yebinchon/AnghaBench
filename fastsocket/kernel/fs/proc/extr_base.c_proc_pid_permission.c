
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct pid_namespace {int hide_pid; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct pid_namespace* s_fs_info; } ;


 int ENOENT ;
 int EPERM ;
 int ESRCH ;
 int generic_permission (struct inode*,int,int *) ;
 struct task_struct* get_proc_task (struct inode*) ;
 int has_pid_permissions (struct pid_namespace*,struct task_struct*,int) ;
 int put_task_struct (struct task_struct*) ;

__attribute__((used)) static int proc_pid_permission(struct inode *inode, int mask)
{
 struct pid_namespace *pid = inode->i_sb->s_fs_info;
 struct task_struct *task;
 bool has_perms;

 task = get_proc_task(inode);
 if (!task)
  return -ESRCH;
 has_perms = has_pid_permissions(pid, task, 1);
 put_task_struct(task);

 if (!has_perms) {
  if (pid->hide_pid == 2) {






   return -ENOENT;
  }

  return -EPERM;
 }
 return generic_permission(inode, mask, ((void*)0));
}
