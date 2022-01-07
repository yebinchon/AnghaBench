
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_target_param {struct xt_classify_target_info* targinfo; } ;
struct xt_classify_target_info {int priority; } ;
struct sk_buff {int priority; } ;


 unsigned int XT_CONTINUE ;

__attribute__((used)) static unsigned int
classify_tg(struct sk_buff *skb, const struct xt_target_param *par)
{
 const struct xt_classify_target_info *clinfo = par->targinfo;

 skb->priority = clinfo->priority;
 return XT_CONTINUE;
}
