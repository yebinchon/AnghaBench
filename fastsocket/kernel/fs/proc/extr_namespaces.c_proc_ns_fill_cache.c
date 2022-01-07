
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct proc_ns_operations {int name; } ;
struct file {int dummy; } ;
typedef int filldir_t ;


 int proc_fill_cache (struct file*,void*,int ,int ,int ,int ,struct task_struct*,struct proc_ns_operations const*) ;
 int proc_ns_instantiate ;
 int strlen (int ) ;

__attribute__((used)) static int proc_ns_fill_cache(struct file *filp, void *dirent,
 filldir_t filldir, struct task_struct *task,
 const struct proc_ns_operations *ops)
{
 return proc_fill_cache(filp, dirent, filldir,
    ops->name, strlen(ops->name),
    proc_ns_instantiate, task, ops);
}
