
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {struct files_struct* files; } ;
struct files_struct {int count; } ;
struct TYPE_2__ {struct files_struct* files; } ;


 unsigned long CLONE_FILES ;
 int atomic_inc (int *) ;
 TYPE_1__* current ;
 struct files_struct* dup_fd (struct files_struct*,int*) ;

__attribute__((used)) static int copy_files(unsigned long clone_flags, struct task_struct * tsk)
{
 struct files_struct *oldf, *newf;
 int error = 0;




 oldf = current->files;
 if (!oldf)
  goto out;

 if (clone_flags & CLONE_FILES) {
  atomic_inc(&oldf->count);
  goto out;
 }

 newf = dup_fd(oldf, &error);
 if (!newf)
  goto out;

 tsk->files = newf;
 error = 0;
out:
 return error;
}
