
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ suites; } ;


 int all_suite (TYPE_1__*) ;
 TYPE_1__* subsystems ;

__attribute__((used)) static void all_subsystem(void)
{
 int i;
 for (i = 0; subsystems[i].suites; i++)
  all_suite(&subsystems[i]);
}
