
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct files_struct* files; } ;
struct files_struct {int dummy; } ;


 struct task_struct* current ;
 int put_files_struct (struct files_struct*) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

void reset_files_struct(struct files_struct *files)
{
 struct task_struct *tsk = current;
 struct files_struct *old;

 old = tsk->files;
 task_lock(tsk);
 tsk->files = files;
 task_unlock(tsk);
 put_files_struct(old);
}
