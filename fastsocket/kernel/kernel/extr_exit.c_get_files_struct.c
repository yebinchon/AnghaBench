
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct files_struct* files; } ;
struct files_struct {int count; } ;


 int atomic_inc (int *) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

struct files_struct *get_files_struct(struct task_struct *task)
{
 struct files_struct *files;

 task_lock(task);
 files = task->files;
 if (files)
  atomic_inc(&files->count);
 task_unlock(task);

 return files;
}
