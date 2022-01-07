
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_notify {int dummy; } ;


 struct target_notify* SLIST_FIRST (int *) ;
 int target_notifylist ;

struct target_notify *
target_first_notify(void)
{
 return (SLIST_FIRST(&target_notifylist));
}
