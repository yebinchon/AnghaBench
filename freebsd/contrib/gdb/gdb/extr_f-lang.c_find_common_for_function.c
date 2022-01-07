
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int owning_function; int name; } ;
typedef TYPE_1__* SAVED_F77_COMMON_PTR ;


 scalar_t__ DEPRECATED_STREQ (int ,char*) ;
 TYPE_1__* head_common_list ;

SAVED_F77_COMMON_PTR
find_common_for_function (char *name, char *funcname)
{

  SAVED_F77_COMMON_PTR tmp;

  tmp = head_common_list;

  while (tmp != ((void*)0))
    {
      if (DEPRECATED_STREQ (tmp->name, name)
   && DEPRECATED_STREQ (tmp->owning_function, funcname))
 return (tmp);
      else
 tmp = tmp->next;
    }
  return (((void*)0));
}
