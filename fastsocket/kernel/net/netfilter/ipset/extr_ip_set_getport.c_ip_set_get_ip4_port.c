
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct iphdr {int protocol; int frag_off; } ;
typedef int __be16 ;


 int IP_OFFSET ;
 int get_port (struct sk_buff const*,int,unsigned int,int,int *,int *) ;
 struct iphdr* ip_hdr (struct sk_buff const*) ;
 unsigned int ip_hdrlen (struct sk_buff const*) ;
 int ntohs (int ) ;

bool
ip_set_get_ip4_port(const struct sk_buff *skb, bool src,
      __be16 *port, u8 *proto)
{
 const struct iphdr *iph = ip_hdr(skb);
 unsigned int protooff = ip_hdrlen(skb);
 int protocol = iph->protocol;


 if (protocol <= 0 || (ntohs(iph->frag_off) & IP_OFFSET))
  return 0;

 return get_port(skb, protocol, protooff, src, port, proto);
}
