
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct xt_target_param {TYPE_1__* target; struct xt_NFQ_info_v1* targinfo; } ;
struct xt_NFQ_info_v1 {int queues_total; scalar_t__ queuenum; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ family; } ;


 scalar_t__ NFPROTO_IPV4 ;
 scalar_t__ NFPROTO_IPV6 ;
 unsigned int NF_QUEUE_NR (scalar_t__) ;
 int hash_v4 (struct sk_buff*) ;
 int hash_v6 (struct sk_buff*) ;

__attribute__((used)) static unsigned int
nfqueue_tg_v1(struct sk_buff *skb, const struct xt_target_param *par)
{
 const struct xt_NFQ_info_v1 *info = par->targinfo;
 u32 queue = info->queuenum;

 if (info->queues_total > 1) {
  if (par->target->family == NFPROTO_IPV4)
   queue = hash_v4(skb) % info->queues_total + queue;




 }
 return NF_QUEUE_NR(queue);
}
