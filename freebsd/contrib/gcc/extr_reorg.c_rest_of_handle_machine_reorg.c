
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* machine_dependent_reorg ) () ;} ;


 int stub1 () ;
 TYPE_1__ targetm ;

__attribute__((used)) static unsigned int
rest_of_handle_machine_reorg (void)
{
  targetm.machine_dependent_reorg ();
  return 0;
}
