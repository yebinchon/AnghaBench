
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ resume; } ;


 scalar_t__ UTRACE_INTERRUPT ;
 int current ;
 TYPE_1__* task_utrace_struct (int ) ;

bool utrace_interrupt_pending(void)
{
 return task_utrace_struct(current)->resume == UTRACE_INTERRUPT;
}
