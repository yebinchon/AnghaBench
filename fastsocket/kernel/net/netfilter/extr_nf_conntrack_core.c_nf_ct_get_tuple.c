
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int16_t ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int dir; int protonum; } ;
struct TYPE_3__ {int l3num; } ;
struct nf_conntrack_tuple {TYPE_2__ dst; TYPE_1__ src; } ;
struct nf_conntrack_l4proto {int (* pkt_to_tuple ) (struct sk_buff const*,unsigned int,struct nf_conntrack_tuple*) ;} ;
struct nf_conntrack_l3proto {scalar_t__ (* pkt_to_tuple ) (struct sk_buff const*,unsigned int,struct nf_conntrack_tuple*) ;} ;


 int IP_CT_DIR_ORIGINAL ;
 int memset (struct nf_conntrack_tuple*,int ,int) ;
 scalar_t__ stub1 (struct sk_buff const*,unsigned int,struct nf_conntrack_tuple*) ;
 int stub2 (struct sk_buff const*,unsigned int,struct nf_conntrack_tuple*) ;

bool
nf_ct_get_tuple(const struct sk_buff *skb,
  unsigned int nhoff,
  unsigned int dataoff,
  u_int16_t l3num,
  u_int8_t protonum,
  struct nf_conntrack_tuple *tuple,
  const struct nf_conntrack_l3proto *l3proto,
  const struct nf_conntrack_l4proto *l4proto)
{
 memset(tuple, 0, sizeof(*tuple));

 tuple->src.l3num = l3num;
 if (l3proto->pkt_to_tuple(skb, nhoff, tuple) == 0)
  return 0;

 tuple->dst.protonum = protonum;
 tuple->dst.dir = IP_CT_DIR_ORIGINAL;

 return l4proto->pkt_to_tuple(skb, dataoff, tuple);
}
