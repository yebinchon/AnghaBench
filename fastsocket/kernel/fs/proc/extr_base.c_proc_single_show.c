
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct seq_file {struct inode* private; } ;
struct pid_namespace {int dummy; } ;
struct pid {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_5__ {int (* proc_show ) (struct seq_file*,struct pid_namespace*,struct pid*,struct task_struct*) ;} ;
struct TYPE_6__ {TYPE_2__ op; } ;
struct TYPE_4__ {struct pid_namespace* s_fs_info; } ;


 int ESRCH ;
 int PIDTYPE_PID ;
 TYPE_3__* PROC_I (struct inode*) ;
 struct task_struct* get_pid_task (struct pid*,int ) ;
 struct pid* proc_pid (struct inode*) ;
 int put_task_struct (struct task_struct*) ;
 int stub1 (struct seq_file*,struct pid_namespace*,struct pid*,struct task_struct*) ;

__attribute__((used)) static int proc_single_show(struct seq_file *m, void *v)
{
 struct inode *inode = m->private;
 struct pid_namespace *ns;
 struct pid *pid;
 struct task_struct *task;
 int ret;

 ns = inode->i_sb->s_fs_info;
 pid = proc_pid(inode);
 task = get_pid_task(pid, PIDTYPE_PID);
 if (!task)
  return -ESRCH;

 ret = PROC_I(inode)->op.proc_show(m, ns, pid, task);

 put_task_struct(task);
 return ret;
}
