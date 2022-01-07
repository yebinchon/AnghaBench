
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dtld_library; } ;
typedef TYPE_1__ dt_list_t ;
typedef TYPE_1__ dt_lib_depend_t ;


 TYPE_1__* dt_list_next (TYPE_1__*) ;
 scalar_t__ strcmp (int ,char const*) ;

dt_lib_depend_t *
dt_lib_depend_lookup(dt_list_t *dld, const char *arg)
{
 dt_lib_depend_t *dldn;

 for (dldn = dt_list_next(dld); dldn != ((void*)0);
     dldn = dt_list_next(dldn)) {
  if (strcmp(dldn->dtld_library, arg) == 0)
   return (dldn);
 }

 return (((void*)0));
}
