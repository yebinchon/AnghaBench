
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_class {scalar_t__ refcnt; } ;
struct Qdisc {int dummy; } ;


 int qfq_destroy_class (struct Qdisc*,struct qfq_class*) ;

__attribute__((used)) static void qfq_put_class(struct Qdisc *sch, unsigned long arg)
{
 struct qfq_class *cl = (struct qfq_class *)arg;

 if (--cl->refcnt == 0)
  qfq_destroy_class(sch, cl);
}
