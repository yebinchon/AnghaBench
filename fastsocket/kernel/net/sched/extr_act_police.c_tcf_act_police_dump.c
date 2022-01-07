
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcf_police {scalar_t__ tcfp_ewma_rate; scalar_t__ tcfp_result; TYPE_2__* tcfp_P_tab; TYPE_1__* tcfp_R_tab; int tcf_bindcnt; int tcf_refcnt; int tcfp_burst; int tcfp_mtu; int tcf_action; int tcf_index; } ;
struct tc_police {int peakrate; int rate; int bindcnt; int refcnt; int burst; int mtu; int action; int index; } ;
struct tc_action {struct tcf_police* priv; } ;
struct sk_buff {int len; } ;
typedef int opt ;
struct TYPE_4__ {int rate; } ;
struct TYPE_3__ {int rate; } ;


 int NLA_PUT (struct sk_buff*,int ,int,struct tc_police*) ;
 int NLA_PUT_U32 (struct sk_buff*,int ,scalar_t__) ;
 int TCA_POLICE_AVRATE ;
 int TCA_POLICE_RESULT ;
 int TCA_POLICE_TBF ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static int
tcf_act_police_dump(struct sk_buff *skb, struct tc_action *a, int bind, int ref)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tcf_police *police = a->priv;
 struct tc_police opt = {
  .index = police->tcf_index,
  .action = police->tcf_action,
  .mtu = police->tcfp_mtu,
  .burst = police->tcfp_burst,
  .refcnt = police->tcf_refcnt - ref,
  .bindcnt = police->tcf_bindcnt - bind,
 };

 if (police->tcfp_R_tab)
  opt.rate = police->tcfp_R_tab->rate;
 if (police->tcfp_P_tab)
  opt.peakrate = police->tcfp_P_tab->rate;
 NLA_PUT(skb, TCA_POLICE_TBF, sizeof(opt), &opt);
 if (police->tcfp_result)
  NLA_PUT_U32(skb, TCA_POLICE_RESULT, police->tcfp_result);
 if (police->tcfp_ewma_rate)
  NLA_PUT_U32(skb, TCA_POLICE_AVRATE, police->tcfp_ewma_rate);
 return skb->len;

nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
