
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ machine_dependent_reorg; } ;


 TYPE_1__ targetm ;

__attribute__((used)) static bool
gate_handle_machine_reorg (void)
{
  return targetm.machine_dependent_reorg != 0;
}
