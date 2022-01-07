
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {char* comm; } ;


 int EINVAL ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static int snd_task_name(struct task_struct *task, char *name, size_t size)
{
 unsigned int idx;

 if (snd_BUG_ON(!task || !name || size < 2))
  return -EINVAL;
 for (idx = 0; idx < sizeof(task->comm) && idx + 1 < size; idx++)
  name[idx] = task->comm[idx];
 name[idx] = '\0';
 return 0;
}
