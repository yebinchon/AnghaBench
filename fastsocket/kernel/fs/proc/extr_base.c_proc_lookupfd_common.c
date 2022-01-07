
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef struct dentry* (* instantiate_t ) (struct inode*,struct dentry*,struct task_struct*,unsigned int*) ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 struct task_struct* get_proc_task (struct inode*) ;
 unsigned int name_to_int (struct dentry*) ;
 int put_task_struct (struct task_struct*) ;

__attribute__((used)) static struct dentry *proc_lookupfd_common(struct inode *dir,
        struct dentry *dentry,
        instantiate_t instantiate)
{
 struct task_struct *task = get_proc_task(dir);
 unsigned fd = name_to_int(dentry);
 struct dentry *result = ERR_PTR(-ENOENT);

 if (!task)
  goto out_no_task;
 if (fd == ~0U)
  goto out;

 result = instantiate(dir, dentry, task, &fd);
out:
 put_task_struct(task);
out_no_task:
 return result;
}
