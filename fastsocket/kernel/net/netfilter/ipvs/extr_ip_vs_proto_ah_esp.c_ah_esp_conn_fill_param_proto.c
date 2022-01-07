
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_iphdr {int saddr; int daddr; } ;
struct ip_vs_conn_param {int dummy; } ;


 int IPPROTO_UDP ;
 int PORT_ISAKMP ;
 int htons (int ) ;
 int ip_vs_conn_fill_param (int,int ,int *,int ,int *,int ,struct ip_vs_conn_param*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static void
ah_esp_conn_fill_param_proto(int af, const struct ip_vs_iphdr *iph,
        int inverse, struct ip_vs_conn_param *p)
{
 if (likely(!inverse))
  ip_vs_conn_fill_param(af, IPPROTO_UDP,
          &iph->saddr, htons(PORT_ISAKMP),
          &iph->daddr, htons(PORT_ISAKMP), p);
 else
  ip_vs_conn_fill_param(af, IPPROTO_UDP,
          &iph->daddr, htons(PORT_ISAKMP),
          &iph->saddr, htons(PORT_ISAKMP), p);
}
