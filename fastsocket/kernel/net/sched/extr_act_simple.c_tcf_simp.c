
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcf_result {int dummy; } ;
struct TYPE_4__ {int packets; int bytes; } ;
struct TYPE_3__ {int lastuse; } ;
struct tcf_defact {int tcf_action; int tcf_lock; TYPE_2__ tcf_bstats; scalar_t__ tcfd_defdata; TYPE_1__ tcf_tm; } ;
struct tc_action {struct tcf_defact* priv; } ;
struct sk_buff {int dummy; } ;


 int jiffies ;
 int pr_info (char*,char*,int ) ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int tcf_simp(struct sk_buff *skb, struct tc_action *a, struct tcf_result *res)
{
 struct tcf_defact *d = a->priv;

 spin_lock(&d->tcf_lock);
 d->tcf_tm.lastuse = jiffies;
 d->tcf_bstats.bytes += qdisc_pkt_len(skb);
 d->tcf_bstats.packets++;





 pr_info("simple: %s_%d\n",
        (char *)d->tcfd_defdata, d->tcf_bstats.packets);
 spin_unlock(&d->tcf_lock);
 return d->tcf_action;
}
