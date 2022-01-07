
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int blocked; int converting; int granted; } ;


 scalar_t__ list_empty (int *) ;

int __dlm_lockres_has_locks(struct dlm_lock_resource *res)
{
 if (list_empty(&res->granted) &&
     list_empty(&res->converting) &&
     list_empty(&res->blocked))
  return 0;
 return 1;
}
