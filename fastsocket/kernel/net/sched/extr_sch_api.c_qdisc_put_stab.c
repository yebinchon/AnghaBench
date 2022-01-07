
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdisc_size_table {scalar_t__ refcnt; int list; } ;


 int kfree (struct qdisc_size_table*) ;
 int list_del (int *) ;
 int qdisc_stab_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void qdisc_put_stab(struct qdisc_size_table *tab)
{
 if (!tab)
  return;

 spin_lock(&qdisc_stab_lock);

 if (--tab->refcnt == 0) {
  list_del(&tab->list);
  kfree(tab);
 }

 spin_unlock(&qdisc_stab_lock);
}
