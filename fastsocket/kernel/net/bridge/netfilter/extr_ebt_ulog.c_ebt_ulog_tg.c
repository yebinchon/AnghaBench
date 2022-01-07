
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_target_param {int targinfo; int out; int in; int hooknum; } ;
struct sk_buff {int dummy; } ;


 unsigned int EBT_CONTINUE ;
 int ebt_ulog_packet (int ,struct sk_buff*,int ,int ,int ,int *) ;

__attribute__((used)) static unsigned int
ebt_ulog_tg(struct sk_buff *skb, const struct xt_target_param *par)
{
 ebt_ulog_packet(par->hooknum, skb, par->in, par->out,
                 par->targinfo, ((void*)0));
 return EBT_CONTINUE;
}
