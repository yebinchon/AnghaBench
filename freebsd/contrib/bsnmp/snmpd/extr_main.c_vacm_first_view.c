
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vacm_view {int dummy; } ;


 struct vacm_view* SLIST_FIRST (int *) ;
 int vacm_viewlist ;

struct vacm_view *
vacm_first_view(void)
{
 return (SLIST_FIRST(&vacm_viewlist));
}
