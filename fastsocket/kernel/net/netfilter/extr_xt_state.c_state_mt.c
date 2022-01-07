
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_state_info {unsigned int statemask; } ;
struct xt_match_param {struct xt_state_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 unsigned int XT_STATE_BIT (int) ;
 unsigned int XT_STATE_INVALID ;
 unsigned int XT_STATE_UNTRACKED ;
 int nf_ct_get (struct sk_buff const*,int*) ;
 scalar_t__ nf_ct_is_untracked (struct sk_buff const*) ;

__attribute__((used)) static bool
state_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct xt_state_info *sinfo = par->matchinfo;
 enum ip_conntrack_info ctinfo;
 unsigned int statebit;

 if (nf_ct_is_untracked(skb))
  statebit = XT_STATE_UNTRACKED;
 else if (!nf_ct_get(skb, &ctinfo))
  statebit = XT_STATE_INVALID;
 else
  statebit = XT_STATE_BIT(ctinfo);

 return (sinfo->statemask & statebit);
}
