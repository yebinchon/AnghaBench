
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {TYPE_1__* signal; } ;
struct rlimit {int rlim_max; int rlim_cur; } ;
struct TYPE_4__ {char* name; char* unit; } ;
struct TYPE_3__ {int rlim; } ;


 int RLIM_INFINITY ;
 int RLIM_NLIMITS ;
 TYPE_2__* lnames ;
 int lock_task_sighand (struct task_struct*,unsigned long*) ;
 int memcpy (struct rlimit*,int ,int) ;
 scalar_t__ sprintf (char*,char*,...) ;
 int unlock_task_sighand (struct task_struct*,unsigned long*) ;

__attribute__((used)) static int proc_pid_limits(struct task_struct *task, char *buffer)
{
 unsigned int i;
 int count = 0;
 unsigned long flags;
 char *bufptr = buffer;

 struct rlimit rlim[RLIM_NLIMITS];

 if (!lock_task_sighand(task, &flags))
  return 0;
 memcpy(rlim, task->signal->rlim, sizeof(struct rlimit) * RLIM_NLIMITS);
 unlock_task_sighand(task, &flags);




 count += sprintf(&bufptr[count], "%-25s %-20s %-20s %-10s\n",
   "Limit", "Soft Limit", "Hard Limit", "Units");

 for (i = 0; i < RLIM_NLIMITS; i++) {
  if (rlim[i].rlim_cur == RLIM_INFINITY)
   count += sprintf(&bufptr[count], "%-25s %-20s ",
      lnames[i].name, "unlimited");
  else
   count += sprintf(&bufptr[count], "%-25s %-20lu ",
      lnames[i].name, rlim[i].rlim_cur);

  if (rlim[i].rlim_max == RLIM_INFINITY)
   count += sprintf(&bufptr[count], "%-20s ", "unlimited");
  else
   count += sprintf(&bufptr[count], "%-20lu ",
      rlim[i].rlim_max);

  if (lnames[i].unit)
   count += sprintf(&bufptr[count], "%-10s\n",
      lnames[i].unit);
  else
   count += sprintf(&bufptr[count], "\n");
 }

 return count;
}
