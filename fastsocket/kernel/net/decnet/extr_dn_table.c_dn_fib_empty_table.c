
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dn_fib_table {int dummy; } ;


 scalar_t__ RT_TABLE_MAX ;
 scalar_t__ RT_TABLE_MIN ;
 struct dn_fib_table* dn_fib_get_table (scalar_t__,int) ;

struct dn_fib_table *dn_fib_empty_table(void)
{
 u32 id;

 for(id = RT_TABLE_MIN; id <= RT_TABLE_MAX; id++)
  if (dn_fib_get_table(id, 0) == ((void*)0))
   return dn_fib_get_table(id, 1);
 return ((void*)0);
}
