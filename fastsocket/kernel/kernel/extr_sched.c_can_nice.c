
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {TYPE_2__* signal; } ;
struct TYPE_4__ {TYPE_1__* rlim; } ;
struct TYPE_3__ {int rlim_cur; } ;


 int CAP_SYS_NICE ;
 size_t RLIMIT_NICE ;
 scalar_t__ capable (int ) ;

int can_nice(const struct task_struct *p, const int nice)
{

 int nice_rlim = 20 - nice;

 return (nice_rlim <= p->signal->rlim[RLIMIT_NICE].rlim_cur ||
  capable(CAP_SYS_NICE));
}
