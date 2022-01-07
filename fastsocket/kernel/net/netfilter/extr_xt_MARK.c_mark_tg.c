
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_target_param {struct xt_mark_tginfo2* targinfo; } ;
struct xt_mark_tginfo2 {int mask; int mark; } ;
struct sk_buff {int mark; } ;


 unsigned int XT_CONTINUE ;

__attribute__((used)) static unsigned int
mark_tg(struct sk_buff *skb, const struct xt_target_param *par)
{
 const struct xt_mark_tginfo2 *info = par->targinfo;

 skb->mark = (skb->mark & ~info->mask) ^ info->mark;
 return XT_CONTINUE;
}
