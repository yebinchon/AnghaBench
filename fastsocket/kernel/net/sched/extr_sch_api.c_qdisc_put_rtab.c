
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdisc_rate_table {struct qdisc_rate_table* next; scalar_t__ refcnt; } ;


 int kfree (struct qdisc_rate_table*) ;
 struct qdisc_rate_table* qdisc_rtab_list ;

void qdisc_put_rtab(struct qdisc_rate_table *tab)
{
 struct qdisc_rate_table *rtab, **rtabp;

 if (!tab || --tab->refcnt)
  return;

 for (rtabp = &qdisc_rtab_list; (rtab=*rtabp) != ((void*)0); rtabp = &rtab->next) {
  if (rtab == tab) {
   *rtabp = rtab->next;
   kfree(rtab);
   return;
  }
 }
}
