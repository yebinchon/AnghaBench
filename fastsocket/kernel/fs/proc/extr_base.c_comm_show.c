
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int comm; } ;
struct seq_file {struct inode* private; } ;
struct inode {int dummy; } ;


 int ESRCH ;
 struct task_struct* get_proc_task (struct inode*) ;
 int put_task_struct (struct task_struct*) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

__attribute__((used)) static int comm_show(struct seq_file *m, void *v)
{
 struct inode *inode = m->private;
 struct task_struct *p;

 p = get_proc_task(inode);
 if (!p)
  return -ESRCH;

 task_lock(p);
 seq_printf(m, "%s\n", p->comm);
 task_unlock(p);

 put_task_struct(p);

 return 0;
}
