
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_act_hdr {int tcf_qstats; int tcf_rate_est; int tcf_bstats; int tcf_lock; } ;
struct tc_action {scalar_t__ type; TYPE_1__* ops; struct tcf_act_hdr* priv; } ;
struct sk_buff {int dummy; } ;
struct gnet_dump {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* get_stats ) (struct sk_buff*,struct tc_action*) ;} ;


 int TCA_ACT_STATS ;
 scalar_t__ TCA_OLD_COMPAT ;
 int TCA_STATS ;
 int TCA_XSTATS ;
 scalar_t__ gnet_stats_copy_basic (struct gnet_dump*,int *) ;
 scalar_t__ gnet_stats_copy_queue (struct gnet_dump*,int *) ;
 scalar_t__ gnet_stats_copy_rate_est (struct gnet_dump*,int *) ;
 scalar_t__ gnet_stats_finish_copy (struct gnet_dump*) ;
 int gnet_stats_start_copy (struct sk_buff*,int ,int *,struct gnet_dump*) ;
 int gnet_stats_start_copy_compat (struct sk_buff*,int ,int ,int ,int *,struct gnet_dump*) ;
 scalar_t__ stub1 (struct sk_buff*,struct tc_action*) ;

int tcf_action_copy_stats(struct sk_buff *skb, struct tc_action *a,
     int compat_mode)
{
 int err = 0;
 struct gnet_dump d;
 struct tcf_act_hdr *h = a->priv;

 if (h == ((void*)0))
  goto errout;




 if (compat_mode) {
  if (a->type == TCA_OLD_COMPAT)
   err = gnet_stats_start_copy_compat(skb, 0,
    TCA_STATS, TCA_XSTATS, &h->tcf_lock, &d);
  else
   return 0;
 } else
  err = gnet_stats_start_copy(skb, TCA_ACT_STATS,
         &h->tcf_lock, &d);

 if (err < 0)
  goto errout;

 if (a->ops != ((void*)0) && a->ops->get_stats != ((void*)0))
  if (a->ops->get_stats(skb, a) < 0)
   goto errout;

 if (gnet_stats_copy_basic(&d, &h->tcf_bstats) < 0 ||
     gnet_stats_copy_rate_est(&d, &h->tcf_rate_est) < 0 ||
     gnet_stats_copy_queue(&d, &h->tcf_qstats) < 0)
  goto errout;

 if (gnet_stats_finish_copy(&d) < 0)
  goto errout;

 return 0;

errout:
 return -1;
}
