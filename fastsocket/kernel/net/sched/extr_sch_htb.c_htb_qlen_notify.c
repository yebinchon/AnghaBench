
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* q; } ;
struct TYPE_8__ {TYPE_3__ leaf; } ;
struct htb_class {TYPE_4__ un; } ;
struct Qdisc {int dummy; } ;
struct TYPE_5__ {scalar_t__ qlen; } ;
struct TYPE_6__ {TYPE_1__ q; } ;


 int htb_deactivate (int ,struct htb_class*) ;
 int qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static void htb_qlen_notify(struct Qdisc *sch, unsigned long arg)
{
 struct htb_class *cl = (struct htb_class *)arg;

 if (cl->un.leaf.q->q.qlen == 0)
  htb_deactivate(qdisc_priv(sch), cl);
}
