
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_class {struct Qdisc* qdisc; } ;
struct Qdisc {int dummy; } ;



__attribute__((used)) static struct Qdisc *qfq_class_leaf(struct Qdisc *sch, unsigned long arg)
{
 struct qfq_class *cl = (struct qfq_class *)arg;

 return cl->qdisc;
}
