
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_address {int dummy; } ;


 struct target_address* SLIST_NEXT (struct target_address*,int ) ;
 int ta ;

struct target_address *
target_next_address(struct target_address *addrs)
{
 if (addrs == ((void*)0))
  return (((void*)0));

 return (SLIST_NEXT(addrs, ta));
}
