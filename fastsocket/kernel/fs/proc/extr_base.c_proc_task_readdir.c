
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct task_struct {struct task_struct* group_leader; } ;
struct pid_namespace {int dummy; } ;
struct inode {int i_ino; } ;
struct TYPE_4__ {struct dentry* dentry; } ;
struct file {scalar_t__ f_version; scalar_t__ f_pos; TYPE_3__* f_dentry; TYPE_1__ f_path; } ;
struct dentry {struct inode* d_inode; } ;
typedef int ino_t ;
typedef int (* filldir_t ) (void*,char*,int,scalar_t__,int ,int ) ;
struct TYPE_6__ {TYPE_2__* d_sb; } ;
struct TYPE_5__ {struct pid_namespace* s_fs_info; } ;


 int DT_DIR ;
 int ENOENT ;
 struct task_struct* first_tid (struct task_struct*,int,scalar_t__,struct pid_namespace*) ;
 struct task_struct* get_proc_task (struct inode*) ;
 int get_task_struct (struct task_struct*) ;
 struct task_struct* next_tid (struct task_struct*) ;
 int parent_ino (struct dentry*) ;
 scalar_t__ pid_alive (struct task_struct*) ;
 scalar_t__ proc_task_fill_cache (struct file*,void*,int (*) (void*,char*,int,scalar_t__,int ,int ),struct task_struct*,int) ;
 int put_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int task_pid_nr_ns (struct task_struct*,struct pid_namespace*) ;

__attribute__((used)) static int proc_task_readdir(struct file * filp, void * dirent, filldir_t filldir)
{
 struct dentry *dentry = filp->f_path.dentry;
 struct inode *inode = dentry->d_inode;
 struct task_struct *leader = ((void*)0);
 struct task_struct *task;
 int retval = -ENOENT;
 ino_t ino;
 int tid;
 struct pid_namespace *ns;

 task = get_proc_task(inode);
 if (!task)
  goto out_no_task;
 rcu_read_lock();
 if (pid_alive(task)) {
  leader = task->group_leader;
  get_task_struct(leader);
 }
 rcu_read_unlock();
 put_task_struct(task);
 if (!leader)
  goto out_no_task;
 retval = 0;

 switch ((unsigned long)filp->f_pos) {
 case 0:
  ino = inode->i_ino;
  if (filldir(dirent, ".", 1, filp->f_pos, ino, DT_DIR) < 0)
   goto out;
  filp->f_pos++;

 case 1:
  ino = parent_ino(dentry);
  if (filldir(dirent, "..", 2, filp->f_pos, ino, DT_DIR) < 0)
   goto out;
  filp->f_pos++;

 }




 ns = filp->f_dentry->d_sb->s_fs_info;
 tid = (int)filp->f_version;
 filp->f_version = 0;
 for (task = first_tid(leader, tid, filp->f_pos - 2, ns);
      task;
      task = next_tid(task), filp->f_pos++) {
  tid = task_pid_nr_ns(task, ns);
  if (proc_task_fill_cache(filp, dirent, filldir, task, tid) < 0) {


   filp->f_version = (u64)tid;
   put_task_struct(task);
   break;
  }
 }
out:
 put_task_struct(leader);
out_no_task:
 return retval;
}
