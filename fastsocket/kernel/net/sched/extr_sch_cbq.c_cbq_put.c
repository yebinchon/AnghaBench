
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbq_sched_data {struct cbq_class* rx_class; } ;
struct cbq_class {scalar_t__ refcnt; } ;
struct Qdisc {int dummy; } ;
typedef int spinlock_t ;


 int cbq_destroy_class (struct Qdisc*,struct cbq_class*) ;
 struct cbq_sched_data* qdisc_priv (struct Qdisc*) ;
 int * qdisc_root_sleeping_lock (struct Qdisc*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void cbq_put(struct Qdisc *sch, unsigned long arg)
{
 struct cbq_class *cl = (struct cbq_class*)arg;

 if (--cl->refcnt == 0) {
  cbq_destroy_class(sch, cl);
 }
}
