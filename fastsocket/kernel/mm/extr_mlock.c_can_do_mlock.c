
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* signal; } ;
struct TYPE_5__ {TYPE_1__* rlim; } ;
struct TYPE_4__ {scalar_t__ rlim_cur; } ;


 int CAP_IPC_LOCK ;
 size_t RLIMIT_MEMLOCK ;
 scalar_t__ capable (int ) ;
 TYPE_3__* current ;

int can_do_mlock(void)
{
 if (capable(CAP_IPC_LOCK))
  return 1;
 if (current->signal->rlim[RLIMIT_MEMLOCK].rlim_cur != 0)
  return 1;
 return 0;
}
