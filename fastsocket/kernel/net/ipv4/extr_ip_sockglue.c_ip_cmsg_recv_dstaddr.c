
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_zero; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sk_buff {scalar_t__ len; } ;
struct msghdr {int dummy; } ;
struct iphdr {int daddr; } ;
typedef int sin ;
typedef int __be16 ;


 int AF_INET ;
 int IP_ORIGDSTADDR ;
 int SOL_IP ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int memset (int ,int ,int) ;
 int put_cmsg (struct msghdr*,int ,int ,int,struct sockaddr_in*) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 scalar_t__ skb_transport_offset (struct sk_buff*) ;

__attribute__((used)) static void ip_cmsg_recv_dstaddr(struct msghdr *msg, struct sk_buff *skb)
{
 struct sockaddr_in sin;
 struct iphdr *iph = ip_hdr(skb);
 __be16 *ports = (__be16 *)skb_transport_header(skb);

 if (skb_transport_offset(skb) + 4 > skb->len)
  return;






 sin.sin_family = AF_INET;
 sin.sin_addr.s_addr = iph->daddr;
 sin.sin_port = ports[1];
 memset(sin.sin_zero, 0, sizeof(sin.sin_zero));

 put_cmsg(msg, SOL_IP, IP_ORIGDSTADDR, sizeof(sin), &sin);
}
