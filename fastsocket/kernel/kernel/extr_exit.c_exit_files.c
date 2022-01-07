
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct files_struct* files; } ;
struct files_struct {int dummy; } ;


 int put_files_struct (struct files_struct*) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

void exit_files(struct task_struct *tsk)
{
 struct files_struct * files = tsk->files;

 if (files) {
  task_lock(tsk);
  tsk->files = ((void*)0);
  task_unlock(tsk);
  put_files_struct(files);
 }
}
