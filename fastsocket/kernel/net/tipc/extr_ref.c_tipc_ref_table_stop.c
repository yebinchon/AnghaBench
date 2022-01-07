
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * entries; } ;


 TYPE_1__ tipc_ref_table ;
 int vfree (int *) ;

void tipc_ref_table_stop(void)
{
 if (!tipc_ref_table.entries)
  return;

 vfree(tipc_ref_table.entries);
 tipc_ref_table.entries = ((void*)0);
}
