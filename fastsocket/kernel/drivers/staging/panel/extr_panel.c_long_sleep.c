
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;


 int HZ ;
 int TASK_INTERRUPTIBLE ;
 TYPE_1__* current ;
 scalar_t__ in_interrupt () ;
 int mdelay (int) ;
 int schedule_timeout (int) ;

__attribute__((used)) static void long_sleep(int ms)
{

 if (in_interrupt())
  mdelay(ms);
 else {
  current->state = TASK_INTERRUPTIBLE;
  schedule_timeout((ms * HZ + 999) / 1000);
 }
}
