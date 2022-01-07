
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ rxhash; } ;
typedef int __be32 ;


 int memcpy (int *,int const*,int) ;
 int update_ipv6_checksum (struct sk_buff*,int ,int *,int const*) ;

__attribute__((used)) static void set_ipv6_addr(struct sk_buff *skb, u8 l4_proto,
     __be32 addr[4], const __be32 new_addr[4],
     bool recalculate_csum)
{
 if (recalculate_csum)
  update_ipv6_checksum(skb, l4_proto, addr, new_addr);

 skb->rxhash = 0;
 memcpy(addr, new_addr, sizeof(__be32[4]));
}
