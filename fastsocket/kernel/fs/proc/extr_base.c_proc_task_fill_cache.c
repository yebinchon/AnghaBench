
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct file {int dummy; } ;
typedef int name ;
typedef int filldir_t ;


 int PROC_NUMBUF ;
 int proc_fill_cache (struct file*,void*,int ,char*,int,int ,struct task_struct*,int *) ;
 int proc_task_instantiate ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int proc_task_fill_cache(struct file *filp, void *dirent, filldir_t filldir,
 struct task_struct *task, int tid)
{
 char name[PROC_NUMBUF];
 int len = snprintf(name, sizeof(name), "%d", tid);
 return proc_fill_cache(filp, dirent, filldir, name, len,
    proc_task_instantiate, task, ((void*)0));
}
