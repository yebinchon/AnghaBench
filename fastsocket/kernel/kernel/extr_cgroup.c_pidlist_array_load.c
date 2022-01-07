
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cgroup_pidlist {int* list; int length; int mutex; int use_count; } ;
struct cgroup_iter {int dummy; } ;
struct cgroup {int dummy; } ;
typedef int pid_t ;
typedef enum cgroup_filetype { ____Placeholder_cgroup_filetype } cgroup_filetype ;


 int CGROUP_FILE_PROCS ;
 int ENOMEM ;
 int cgroup_iter_end (struct cgroup*,struct cgroup_iter*) ;
 struct task_struct* cgroup_iter_next (struct cgroup*,struct cgroup_iter*) ;
 int cgroup_iter_start (struct cgroup*,struct cgroup_iter*) ;
 struct cgroup_pidlist* cgroup_pidlist_find (struct cgroup*,int) ;
 int cgroup_task_count (struct cgroup*) ;
 int cmppid ;
 int* pidlist_allocate (int) ;
 int pidlist_free (int*) ;
 int pidlist_uniq (int**,int) ;
 int sort (int*,int,int,int ,int *) ;
 int task_pid_vnr (struct task_struct*) ;
 int task_tgid_vnr (struct task_struct*) ;
 scalar_t__ unlikely (int) ;
 int up_write (int *) ;

__attribute__((used)) static int pidlist_array_load(struct cgroup *cgrp, enum cgroup_filetype type,
         struct cgroup_pidlist **lp)
{
 pid_t *array;
 int length;
 int pid, n = 0;
 struct cgroup_iter it;
 struct task_struct *tsk;
 struct cgroup_pidlist *l;







 length = cgroup_task_count(cgrp);
 array = pidlist_allocate(length);
 if (!array)
  return -ENOMEM;

 cgroup_iter_start(cgrp, &it);
 while ((tsk = cgroup_iter_next(cgrp, &it))) {
  if (unlikely(n == length))
   break;

  if (type == CGROUP_FILE_PROCS)
   pid = task_tgid_vnr(tsk);
  else
   pid = task_pid_vnr(tsk);
  if (pid > 0)
   array[n++] = pid;
 }
 cgroup_iter_end(cgrp, &it);
 length = n;

 sort(array, length, sizeof(pid_t), cmppid, ((void*)0));
 if (type == CGROUP_FILE_PROCS)
  length = pidlist_uniq(&array, length);
 l = cgroup_pidlist_find(cgrp, type);
 if (!l) {
  pidlist_free(array);
  return -ENOMEM;
 }

 pidlist_free(l->list);
 l->list = array;
 l->length = length;
 l->use_count++;
 up_write(&l->mutex);
 *lp = l;
 return 0;
}
