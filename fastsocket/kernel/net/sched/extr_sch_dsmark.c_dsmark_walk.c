
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdisc_walker {int stop; scalar_t__ count; scalar_t__ skip; scalar_t__ (* fn ) (struct Qdisc*,int,struct qdisc_walker*) ;} ;
struct dsmark_qdisc_data {int indices; int* mask; int * value; } ;
struct Qdisc {int dummy; } ;


 int pr_debug (char*,struct Qdisc*,struct dsmark_qdisc_data*,struct qdisc_walker*) ;
 struct dsmark_qdisc_data* qdisc_priv (struct Qdisc*) ;
 scalar_t__ stub1 (struct Qdisc*,int,struct qdisc_walker*) ;

__attribute__((used)) static void dsmark_walk(struct Qdisc *sch, struct qdisc_walker *walker)
{
 struct dsmark_qdisc_data *p = qdisc_priv(sch);
 int i;

 pr_debug("dsmark_walk(sch %p,[qdisc %p],walker %p)\n", sch, p, walker);

 if (walker->stop)
  return;

 for (i = 0; i < p->indices; i++) {
  if (p->mask[i] == 0xff && !p->value[i])
   goto ignore;
  if (walker->count >= walker->skip) {
   if (walker->fn(sch, i+1, walker) < 0) {
    walker->stop = 1;
    break;
   }
  }
ignore:
  walker->count++;
 }
}
