
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct seq_operations {int dummy; } ;
struct path {int dummy; } ;
struct TYPE_2__ {struct proc_mounts* private; } ;
struct proc_mounts {int event; struct path root; struct mnt_namespace* ns; TYPE_1__ m; } ;
struct nsproxy {struct mnt_namespace* mnt_ns; } ;
struct mnt_namespace {int event; } ;
struct inode {int dummy; } ;
struct file {TYPE_1__* private_data; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ get_fs_path (struct task_struct*,struct path*,int) ;
 int get_mnt_ns (struct mnt_namespace*) ;
 struct task_struct* get_proc_task (struct inode*) ;
 int kfree (struct proc_mounts*) ;
 struct proc_mounts* kmalloc (int,int ) ;
 int path_put (struct path*) ;
 int put_mnt_ns (struct mnt_namespace*) ;
 int put_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int seq_open (struct file*,struct seq_operations const*) ;
 struct nsproxy* task_nsproxy (struct task_struct*) ;

__attribute__((used)) static int mounts_open_common(struct inode *inode, struct file *file,
         const struct seq_operations *op)
{
 struct task_struct *task = get_proc_task(inode);
 struct nsproxy *nsp;
 struct mnt_namespace *ns = ((void*)0);
 struct path root;
 struct proc_mounts *p;
 int ret = -EINVAL;

 if (task) {
  rcu_read_lock();
  nsp = task_nsproxy(task);
  if (nsp) {
   ns = nsp->mnt_ns;
   if (ns)
    get_mnt_ns(ns);
  }
  rcu_read_unlock();
  if (ns && get_fs_path(task, &root, 1) == 0)
   ret = 0;
  put_task_struct(task);
 }

 if (!ns)
  goto err;
 if (ret)
  goto err_put_ns;

 ret = -ENOMEM;
 p = kmalloc(sizeof(struct proc_mounts), GFP_KERNEL);
 if (!p)
  goto err_put_path;

 file->private_data = &p->m;
 ret = seq_open(file, op);
 if (ret)
  goto err_free;

 p->m.private = p;
 p->ns = ns;
 p->root = root;
 p->event = ns->event;

 return 0;

 err_free:
 kfree(p);
 err_put_path:
 path_put(&root);
 err_put_ns:
 put_mnt_ns(ns);
 err:
 return ret;
}
