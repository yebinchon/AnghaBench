
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tproxy_target_info {int mark_value; int mark_mask; int lport; int laddr; } ;
struct xt_target_param {struct xt_tproxy_target_info* targinfo; } ;
struct sk_buff {int dummy; } ;


 unsigned int tproxy_tg4 (struct sk_buff*,int ,int ,int ,int ) ;

__attribute__((used)) static unsigned int
tproxy_tg4_v0(struct sk_buff *skb, const struct xt_target_param *par)
{
 const struct xt_tproxy_target_info *tgi = par->targinfo;

 return tproxy_tg4(skb, tgi->laddr, tgi->lport, tgi->mark_mask, tgi->mark_value);
}
