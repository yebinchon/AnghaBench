
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_class {int filter_cnt; } ;
struct Qdisc {int dummy; } ;



__attribute__((used)) static void qfq_unbind_tcf(struct Qdisc *sch, unsigned long arg)
{
 struct qfq_class *cl = (struct qfq_class *)arg;

 cl->filter_cnt--;
}
