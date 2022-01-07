
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vacm_view {int dummy; } ;


 int SLIST_REMOVE (int *,struct vacm_view*,int ,int ) ;
 int free (struct vacm_view*) ;
 int vacm_view ;
 int vacm_viewlist ;
 int vvl ;

int
vacm_delete_view(struct vacm_view *view)
{
 SLIST_REMOVE(&vacm_viewlist, view, vacm_view, vvl);
 free(view);

 return (0);
}
