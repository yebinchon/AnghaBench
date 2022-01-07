
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int nvlist_prtctl_t ;


 int nvlist_print_with_indent (int *,int ) ;

void
nvlist_prt(nvlist_t *nvl, nvlist_prtctl_t pctl)
{
 nvlist_print_with_indent(nvl, pctl);
}
