
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {int u3; } ;
struct TYPE_3__ {int u3; } ;
struct nf_conntrack_tuple {TYPE_2__ dst; TYPE_1__ src; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static bool generic_pkt_to_tuple(const struct sk_buff *skb, unsigned int nhoff,
     struct nf_conntrack_tuple *tuple)
{
 memset(&tuple->src.u3, 0, sizeof(tuple->src.u3));
 memset(&tuple->dst.u3, 0, sizeof(tuple->dst.u3));

 return 1;
}
