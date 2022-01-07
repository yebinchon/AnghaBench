
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hfsc_class {TYPE_2__* qdisc; } ;
struct Qdisc {int dummy; } ;
struct TYPE_3__ {scalar_t__ qlen; } ;
struct TYPE_4__ {TYPE_1__ q; } ;


 int set_passive (struct hfsc_class*) ;
 int update_vf (struct hfsc_class*,int ,int ) ;

__attribute__((used)) static void
hfsc_qlen_notify(struct Qdisc *sch, unsigned long arg)
{
 struct hfsc_class *cl = (struct hfsc_class *)arg;

 if (cl->qdisc->q.qlen == 0) {
  update_vf(cl, 0, 0);
  set_passive(cl);
 }
}
