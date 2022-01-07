
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct pid_entry {scalar_t__ len; int name; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int ARRAY_SIZE (struct pid_entry*) ;
 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 struct task_struct* get_proc_task (struct inode*) ;
 int memcmp (int ,int ,scalar_t__) ;
 struct dentry* proc_base_instantiate (struct inode*,struct dentry*,struct task_struct*,struct pid_entry const*) ;
 struct pid_entry* proc_base_stuff ;
 int put_task_struct (struct task_struct*) ;

__attribute__((used)) static struct dentry *proc_base_lookup(struct inode *dir, struct dentry *dentry)
{
 struct dentry *error;
 struct task_struct *task = get_proc_task(dir);
 const struct pid_entry *p, *last;

 error = ERR_PTR(-ENOENT);

 if (!task)
  goto out_no_task;


 last = &proc_base_stuff[ARRAY_SIZE(proc_base_stuff) - 1];
 for (p = proc_base_stuff; p <= last; p++) {
  if (p->len != dentry->d_name.len)
   continue;
  if (!memcmp(dentry->d_name.name, p->name, p->len))
   break;
 }
 if (p > last)
  goto out;

 error = proc_base_instantiate(dir, dentry, task, p);

out:
 put_task_struct(task);
out_no_task:
 return error;
}
