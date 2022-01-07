
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 unsigned long oom_badness (struct task_struct*,int *,int *,scalar_t__) ;
 scalar_t__ pid_alive (struct task_struct*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int sprintf (char*,char*,unsigned long) ;
 int tasklist_lock ;
 scalar_t__ total_swap_pages ;
 scalar_t__ totalram_pages ;

__attribute__((used)) static int proc_oom_score(struct task_struct *task, char *buffer)
{
 unsigned long points = 0;

 read_lock(&tasklist_lock);
 if (pid_alive(task))
  points = oom_badness(task, ((void*)0), ((void*)0),
     totalram_pages + total_swap_pages);
 read_unlock(&tasklist_lock);
 return sprintf(buffer, "%lu\n", points);
}
