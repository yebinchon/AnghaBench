
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_target_param {struct xt_NFQ_info* targinfo; } ;
struct xt_NFQ_info {int queuenum; } ;
struct sk_buff {int dummy; } ;


 unsigned int NF_QUEUE_NR (int ) ;

__attribute__((used)) static unsigned int
nfqueue_tg(struct sk_buff *skb, const struct xt_target_param *par)
{
 const struct xt_NFQ_info *tinfo = par->targinfo;

 return NF_QUEUE_NR(tinfo->queuenum);
}
