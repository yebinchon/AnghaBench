
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vacm_view {int dummy; } ;


 struct vacm_view* SLIST_NEXT (struct vacm_view*,int ) ;
 int vvl ;

struct vacm_view *
vacm_next_view(struct vacm_view *view)
{
 if (view == ((void*)0))
  return (((void*)0));

 return (SLIST_NEXT(view, vvl));
}
