
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lmodule {int dummy; } ;
struct fdesc {struct lmodule* owner; } ;


 struct fdesc* LIST_FIRST (int *) ;
 struct fdesc* LIST_NEXT (struct fdesc*,int ) ;
 int fd_deselect (struct fdesc*) ;
 int fdesc_list ;
 int link ;

__attribute__((used)) static void
fd_flush(struct lmodule *mod)
{
 struct fdesc *t, *t1;

 t = LIST_FIRST(&fdesc_list);
 while (t != ((void*)0)) {
  t1 = LIST_NEXT(t, link);
  if (t->owner == mod)
   fd_deselect(t);
  t = t1;
 }
}
