
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pfifo_fast_priv {scalar_t__ bitmap; } ;
struct TYPE_4__ {scalar_t__ qlen; } ;
struct TYPE_3__ {scalar_t__ backlog; } ;
struct Qdisc {TYPE_2__ q; TYPE_1__ qstats; } ;


 int PFIFO_FAST_BANDS ;
 int __qdisc_reset_queue (struct Qdisc*,int ) ;
 int band2list (struct pfifo_fast_priv*,int) ;
 struct pfifo_fast_priv* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static void pfifo_fast_reset(struct Qdisc* qdisc)
{
 int prio;
 struct pfifo_fast_priv *priv = qdisc_priv(qdisc);

 for (prio = 0; prio < PFIFO_FAST_BANDS; prio++)
  __qdisc_reset_queue(qdisc, band2list(priv, prio));

 priv->bitmap = 0;
 qdisc->qstats.backlog = 0;
 qdisc->q.qlen = 0;
}
