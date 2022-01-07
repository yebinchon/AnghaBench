
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {int dest; } ;
struct sk_buff {int mark; } ;
struct ip_vs_service {int dummy; } ;
struct ip_vs_protocol {int dummy; } ;
struct ip_vs_iphdr {int daddr; int protocol; int len; } ;
struct ip_vs_conn {int dummy; } ;
typedef int _udph ;


 int NF_DROP ;
 int ip_vs_fill_iphdr (int,int ,struct ip_vs_iphdr*) ;
 int ip_vs_leave (struct ip_vs_service*,struct sk_buff*,struct ip_vs_protocol*) ;
 struct ip_vs_conn* ip_vs_schedule (struct ip_vs_service*,struct sk_buff*) ;
 struct ip_vs_service* ip_vs_service_get (int,int ,int ,int *,int ) ;
 int ip_vs_service_put (struct ip_vs_service*) ;
 scalar_t__ ip_vs_todrop () ;
 struct udphdr* skb_header_pointer (struct sk_buff*,int ,int,struct udphdr*) ;
 int skb_network_header (struct sk_buff*) ;

__attribute__((used)) static int
udp_conn_schedule(int af, struct sk_buff *skb, struct ip_vs_protocol *pp,
    int *verdict, struct ip_vs_conn **cpp)
{
 struct ip_vs_service *svc;
 struct udphdr _udph, *uh;
 struct ip_vs_iphdr iph;

 ip_vs_fill_iphdr(af, skb_network_header(skb), &iph);

 uh = skb_header_pointer(skb, iph.len, sizeof(_udph), &_udph);
 if (uh == ((void*)0)) {
  *verdict = NF_DROP;
  return 0;
 }

 svc = ip_vs_service_get(af, skb->mark, iph.protocol,
    &iph.daddr, uh->dest);
 if (svc) {
  if (ip_vs_todrop()) {




   ip_vs_service_put(svc);
   *verdict = NF_DROP;
   return 0;
  }





  *cpp = ip_vs_schedule(svc, skb);
  if (!*cpp) {
   *verdict = ip_vs_leave(svc, skb, pp);
   return 0;
  }
  ip_vs_service_put(svc);
 }
 return 1;
}
