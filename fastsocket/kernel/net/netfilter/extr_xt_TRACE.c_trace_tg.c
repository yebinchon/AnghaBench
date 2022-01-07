
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_target_param {int dummy; } ;
struct sk_buff {int nf_trace; } ;


 unsigned int XT_CONTINUE ;

__attribute__((used)) static unsigned int
trace_tg(struct sk_buff *skb, const struct xt_target_param *par)
{
 skb->nf_trace = 1;
 return XT_CONTINUE;
}
