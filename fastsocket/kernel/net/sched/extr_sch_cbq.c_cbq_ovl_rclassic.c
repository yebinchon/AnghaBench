
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbq_sched_data {scalar_t__ toplevel; } ;
struct cbq_class {scalar_t__ level; struct cbq_class* borrow; int qdisc; } ;


 int cbq_ovl_classic (struct cbq_class*) ;
 struct cbq_sched_data* qdisc_priv (int ) ;

__attribute__((used)) static void cbq_ovl_rclassic(struct cbq_class *cl)
{
 struct cbq_sched_data *q = qdisc_priv(cl->qdisc);
 struct cbq_class *this = cl;

 do {
  if (cl->level > q->toplevel) {
   cl = ((void*)0);
   break;
  }
 } while ((cl = cl->borrow) != ((void*)0));

 if (cl == ((void*)0))
  cl = this;
 cbq_ovl_classic(cl);
}
