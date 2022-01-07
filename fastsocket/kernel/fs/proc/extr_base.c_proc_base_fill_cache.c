
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pid_entry {int len; int name; } ;
struct file {int dummy; } ;
typedef int filldir_t ;


 int proc_base_instantiate ;
 int proc_fill_cache (struct file*,void*,int ,int ,int ,int ,struct task_struct*,struct pid_entry const*) ;

__attribute__((used)) static int proc_base_fill_cache(struct file *filp, void *dirent,
 filldir_t filldir, struct task_struct *task, const struct pid_entry *p)
{
 return proc_fill_cache(filp, dirent, filldir, p->name, p->len,
    proc_base_instantiate, task, p);
}
