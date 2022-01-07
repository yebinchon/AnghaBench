
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int decl_t ;
struct TYPE_2__ {scalar_t__ max_occ_cycle_num; } ;


 TYPE_1__* DECL_UNIT (int ) ;

__attribute__((used)) static int
compare_max_occ_cycle_nums (const void *unit_decl_1,
       const void *unit_decl_2)
{
  if ((DECL_UNIT (*(decl_t *) unit_decl_1)->max_occ_cycle_num)
      < (DECL_UNIT (*(decl_t *) unit_decl_2)->max_occ_cycle_num))
    return 1;
  else if ((DECL_UNIT (*(decl_t *) unit_decl_1)->max_occ_cycle_num)
    == (DECL_UNIT (*(decl_t *) unit_decl_2)->max_occ_cycle_num))
    return 0;
  else
    return -1;
}
