
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int free_list (scalar_t__*,int *) ;
 int unused_deps_list ;

void
free_DEPS_LIST_list (rtx *listp)
{
  if (*listp == 0)
    return;
  free_list (listp, &unused_deps_list);
}
