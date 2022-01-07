
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer {struct lmodule* owner; } ;
struct lmodule {int dummy; } ;


 struct timer* LIST_FIRST (int *) ;
 struct timer* LIST_NEXT (struct timer*,int ) ;
 int link ;
 int timer_list ;
 int timer_stop (struct timer*) ;

__attribute__((used)) static void
timer_flush(struct lmodule *mod)
{
 struct timer *t, *t1;

 t = LIST_FIRST(&timer_list);
 while (t != ((void*)0)) {
  t1 = LIST_NEXT(t, link);
  if (t->owner == mod)
   timer_stop(t);
  t = t1;
 }
}
