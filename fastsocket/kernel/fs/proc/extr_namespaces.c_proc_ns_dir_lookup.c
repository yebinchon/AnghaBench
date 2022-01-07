
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct proc_ns_operations {int name; } ;
struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {unsigned int len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 size_t ARRAY_SIZE (struct proc_ns_operations**) ;
 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 struct task_struct* get_proc_task (struct inode*) ;
 int memcmp (int ,int ,unsigned int) ;
 struct proc_ns_operations** ns_entries ;
 struct dentry* proc_ns_instantiate (struct inode*,struct dentry*,struct task_struct*,struct proc_ns_operations const*) ;
 int put_task_struct (struct task_struct*) ;
 unsigned int strlen (int ) ;

__attribute__((used)) static struct dentry *proc_ns_dir_lookup(struct inode *dir,
    struct dentry *dentry, struct nameidata *nd)
{
 struct dentry *error;
 struct task_struct *task = get_proc_task(dir);
 const struct proc_ns_operations **entry, **last;
 unsigned int len = dentry->d_name.len;

 error = ERR_PTR(-ENOENT);

 if (!task)
  goto out_no_task;

 last = &ns_entries[ARRAY_SIZE(ns_entries)];
 for (entry = ns_entries; entry < last; entry++) {
  if (strlen((*entry)->name) != len)
   continue;
  if (!memcmp(dentry->d_name.name, (*entry)->name, len))
   break;
 }
 if (entry == last)
  goto out;

 error = proc_ns_instantiate(dir, dentry, task, *entry);
out:
 put_task_struct(task);
out_no_task:
 return error;
}
