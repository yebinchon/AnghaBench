
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sk_buff {int dummy; } ;
struct iphdr {int frag_off; int ihl; int protocol; } ;
typedef int _iph ;


 int IP_OFFSET ;
 int NF_ACCEPT ;
 int NF_DROP ;
 int htons (int ) ;
 struct iphdr* skb_header_pointer (struct sk_buff const*,unsigned int,int,struct iphdr*) ;

__attribute__((used)) static int ipv4_get_l4proto(const struct sk_buff *skb, unsigned int nhoff,
       unsigned int *dataoff, u_int8_t *protonum)
{
 const struct iphdr *iph;
 struct iphdr _iph;

 iph = skb_header_pointer(skb, nhoff, sizeof(_iph), &_iph);
 if (iph == ((void*)0))
  return -NF_DROP;



 if (iph->frag_off & htons(IP_OFFSET))
  return -NF_DROP;

 *dataoff = nhoff + (iph->ihl << 2);
 *protonum = iph->protocol;

 return NF_ACCEPT;
}
