
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfifo_fast_priv {int dummy; } ;
struct nlattr {int dummy; } ;
struct Qdisc {int dummy; } ;


 int PFIFO_FAST_BANDS ;
 int band2list (struct pfifo_fast_priv*,int) ;
 struct pfifo_fast_priv* qdisc_priv (struct Qdisc*) ;
 int skb_queue_head_init (int ) ;

__attribute__((used)) static int pfifo_fast_init(struct Qdisc *qdisc, struct nlattr *opt)
{
 int prio;
 struct pfifo_fast_priv *priv = qdisc_priv(qdisc);

 for (prio = 0; prio < PFIFO_FAST_BANDS; prio++)
  skb_queue_head_init(band2list(priv, prio));

 return 0;
}
