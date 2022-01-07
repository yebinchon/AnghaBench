
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_notify {int dummy; } ;


 struct target_notify* SLIST_NEXT (struct target_notify*,int ) ;
 int tn ;

struct target_notify *
target_next_notify(struct target_notify *notify)
{
 if (notify == ((void*)0))
  return (((void*)0));

 return (SLIST_NEXT(notify, tn));
}
