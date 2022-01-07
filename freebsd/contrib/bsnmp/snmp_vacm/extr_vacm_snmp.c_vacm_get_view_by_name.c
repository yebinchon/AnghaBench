
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct vacm_view {int viewname; } ;


 scalar_t__ memcmp (int *,int ,int ) ;
 int strlen (int ) ;
 struct vacm_view* vacm_first_view () ;
 struct vacm_view* vacm_next_view (struct vacm_view*) ;

__attribute__((used)) static struct vacm_view *
vacm_get_view_by_name(u_char *octets, u_int len)
{
 struct vacm_view *view;

 for (view = vacm_first_view(); view != ((void*)0); view = vacm_next_view(view))
  if (strlen(view->viewname) == len &&
      memcmp(octets, view->viewname, len) == 0)
   return (view);

 return (((void*)0));
}
