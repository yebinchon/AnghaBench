
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;


 int TASK_INTERRUPTIBLE ;
 TYPE_1__* current ;
 int schedule_timeout (unsigned int) ;

__attribute__((used)) static void sleep(unsigned howlong)
{
 current->state = TASK_INTERRUPTIBLE;
 schedule_timeout(howlong);
}
