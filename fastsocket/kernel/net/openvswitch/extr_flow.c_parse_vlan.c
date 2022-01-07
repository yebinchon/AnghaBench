
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tci; } ;
struct sw_flow_key {TYPE_1__ eth; } ;
struct sk_buff {int len; scalar_t__ data; } ;
typedef int __be16 ;


 int ENOMEM ;
 int VLAN_TAG_PRESENT ;
 int __skb_pull (struct sk_buff*,int) ;
 int htons (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int parse_vlan(struct sk_buff *skb, struct sw_flow_key *key)
{
 struct qtag_prefix {
  __be16 eth_type;
  __be16 tci;
 };
 struct qtag_prefix *qp;

 if (unlikely(skb->len < sizeof(struct qtag_prefix) + sizeof(__be16)))
  return 0;

 if (unlikely(!pskb_may_pull(skb, sizeof(struct qtag_prefix) +
      sizeof(__be16))))
  return -ENOMEM;

 qp = (struct qtag_prefix *) skb->data;
 key->eth.tci = qp->tci | htons(VLAN_TAG_PRESENT);
 __skb_pull(skb, sizeof(struct qtag_prefix));

 return 0;
}
