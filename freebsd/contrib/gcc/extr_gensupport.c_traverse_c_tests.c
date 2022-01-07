
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int htab_trav ;


 scalar_t__ condition_table ;
 int htab_traverse (scalar_t__,int ,void*) ;

void
traverse_c_tests (htab_trav callback, void *info)
{
  if (condition_table)
    htab_traverse (condition_table, callback, info);
}
