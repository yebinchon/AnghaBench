
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cbq_class {TYPE_2__* q; } ;
struct Qdisc {int dummy; } ;
struct TYPE_3__ {scalar_t__ qlen; } ;
struct TYPE_4__ {TYPE_1__ q; } ;


 int cbq_deactivate_class (struct cbq_class*) ;

__attribute__((used)) static void cbq_qlen_notify(struct Qdisc *sch, unsigned long arg)
{
 struct cbq_class *cl = (struct cbq_class *)arg;

 if (cl->q->q.qlen == 0)
  cbq_deactivate_class(cl);
}
