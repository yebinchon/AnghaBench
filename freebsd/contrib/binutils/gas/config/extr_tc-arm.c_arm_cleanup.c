
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sub_section; int section; struct TYPE_3__* next; } ;
typedef TYPE_1__ literal_pool ;


 int arm_elf_change_section () ;
 TYPE_1__* list_of_pools ;
 int s_ltorg (int ) ;
 int subseg_set (int ,int ) ;

void
arm_cleanup (void)
{
  literal_pool * pool;

  for (pool = list_of_pools; pool; pool = pool->next)
    {

      subseg_set (pool->section, pool->sub_section);



      s_ltorg (0);
    }
}
