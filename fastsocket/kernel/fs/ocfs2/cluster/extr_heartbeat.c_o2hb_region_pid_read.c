
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_region {scalar_t__ hr_task; } ;
typedef int ssize_t ;
typedef int pid_t ;


 int o2hb_live_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 int task_pid_nr (scalar_t__) ;

__attribute__((used)) static ssize_t o2hb_region_pid_read(struct o2hb_region *reg,
                                      char *page)
{
 pid_t pid = 0;

 spin_lock(&o2hb_live_lock);
 if (reg->hr_task)
  pid = task_pid_nr(reg->hr_task);
 spin_unlock(&o2hb_live_lock);

 if (!pid)
  return 0;

 return sprintf(page, "%u\n", pid);
}
