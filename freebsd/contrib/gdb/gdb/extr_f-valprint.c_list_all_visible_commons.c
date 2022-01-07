
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; int name; int owning_function; } ;
typedef TYPE_1__* SAVED_F77_COMMON_PTR ;


 TYPE_1__* head_common_list ;
 int printf_filtered (char*,...) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
list_all_visible_commons (char *funname)
{
  SAVED_F77_COMMON_PTR tmp;

  tmp = head_common_list;

  printf_filtered ("All COMMON blocks visible at this level:\n\n");

  while (tmp != ((void*)0))
    {
      if (strcmp (tmp->owning_function, funname) == 0)
 printf_filtered ("%s\n", tmp->name);

      tmp = tmp->next;
    }
}
