
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_address {int dummy; } ;


 struct target_address* SLIST_FIRST (int *) ;
 int target_addresslist ;

struct target_address *
target_first_address(void)
{
 return (SLIST_FIRST(&target_addresslist));
}
