
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* signal; } ;
struct TYPE_5__ {TYPE_1__* rlim; } ;
struct TYPE_4__ {unsigned long rlim_cur; } ;


 unsigned long EXEC_STACK_BIAS ;
 size_t RLIMIT_STACK ;
 TYPE_3__* current ;

__attribute__((used)) static int over_stack_limit(unsigned long sz)
{
 if (sz < EXEC_STACK_BIAS)
  return 0;
 return (sz - EXEC_STACK_BIAS) >
   current->signal->rlim[RLIMIT_STACK].rlim_cur;
}
