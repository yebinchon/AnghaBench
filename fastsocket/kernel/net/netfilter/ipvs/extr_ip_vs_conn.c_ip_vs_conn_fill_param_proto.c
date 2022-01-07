
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ip_vs_iphdr {int saddr; int daddr; int protocol; } ;
struct ip_vs_conn_param {int dummy; } ;
typedef int _ports ;
typedef int __be16 ;


 int ip_vs_conn_fill_param (int,int ,int *,int ,int *,int ,struct ip_vs_conn_param*) ;
 scalar_t__ likely (int) ;
 int * skb_header_pointer (struct sk_buff const*,unsigned int,int,int *) ;

__attribute__((used)) static int
ip_vs_conn_fill_param_proto(int af, const struct sk_buff *skb,
       const struct ip_vs_iphdr *iph,
       unsigned int proto_off, int inverse,
       struct ip_vs_conn_param *p)
{
 __be16 _ports[2], *pptr;

 pptr = skb_header_pointer(skb, proto_off, sizeof(_ports), _ports);
 if (pptr == ((void*)0))
  return 1;

 if (likely(!inverse))
  ip_vs_conn_fill_param(af, iph->protocol, &iph->saddr, pptr[0],
          &iph->daddr, pptr[1], p);
 else
  ip_vs_conn_fill_param(af, iph->protocol, &iph->daddr, pptr[1],
          &iph->saddr, pptr[0], p);
 return 0;
}
