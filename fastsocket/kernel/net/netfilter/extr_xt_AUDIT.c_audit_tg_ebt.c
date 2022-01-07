
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_target_param {int dummy; } ;
struct sk_buff {int dummy; } ;


 unsigned int EBT_CONTINUE ;
 int audit_tg (struct sk_buff*,struct xt_target_param const*) ;

__attribute__((used)) static unsigned int
audit_tg_ebt(struct sk_buff *skb, const struct xt_target_param *par)
{
 audit_tg(skb, par);
 return EBT_CONTINUE;
}
