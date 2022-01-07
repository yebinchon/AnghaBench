
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct rtable {scalar_t__ rt_spec_dst; scalar_t__ rt_iif; } ;
struct msghdr {int dummy; } ;
struct TYPE_5__ {scalar_t__ s_addr; } ;
struct TYPE_4__ {int s_addr; } ;
struct in_pktinfo {TYPE_2__ ipi_spec_dst; scalar_t__ ipi_ifindex; TYPE_1__ ipi_addr; } ;
typedef int info ;
struct TYPE_6__ {int daddr; } ;


 int IP_PKTINFO ;
 int SOL_IP ;
 TYPE_3__* ip_hdr (struct sk_buff*) ;
 int put_cmsg (struct msghdr*,int ,int ,int,struct in_pktinfo*) ;
 struct rtable* skb_rtable (struct sk_buff*) ;

__attribute__((used)) static void ip_cmsg_recv_pktinfo(struct msghdr *msg, struct sk_buff *skb)
{
 struct in_pktinfo info;
 struct rtable *rt = skb_rtable(skb);

 info.ipi_addr.s_addr = ip_hdr(skb)->daddr;
 if (rt) {
  info.ipi_ifindex = rt->rt_iif;
  info.ipi_spec_dst.s_addr = rt->rt_spec_dst;
 } else {
  info.ipi_ifindex = 0;
  info.ipi_spec_dst.s_addr = 0;
 }

 put_cmsg(msg, SOL_IP, IP_PKTINFO, sizeof(info), &info);
}
