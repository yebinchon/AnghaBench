
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ip_vs_protocol {int name; } ;
struct ip_vs_iphdr {int daddr; int saddr; } ;
struct ip_vs_conn_param {int dummy; } ;
struct ip_vs_conn {int dummy; } ;


 int IP_VS_DBG_ADDR (int,int *) ;
 int IP_VS_DBG_BUF (int,char*,char*,int ,int ,int ) ;
 int ah_esp_conn_fill_param_proto (int,struct ip_vs_iphdr const*,int,struct ip_vs_conn_param*) ;
 struct ip_vs_conn* ip_vs_conn_in_get (struct ip_vs_conn_param*) ;

__attribute__((used)) static struct ip_vs_conn *
ah_esp_conn_in_get(int af, const struct sk_buff *skb, struct ip_vs_protocol *pp,
     const struct ip_vs_iphdr *iph, unsigned int proto_off,
     int inverse)
{
 struct ip_vs_conn *cp;
 struct ip_vs_conn_param p;

 ah_esp_conn_fill_param_proto(af, iph, inverse, &p);
 cp = ip_vs_conn_in_get(&p);
 if (!cp) {




  IP_VS_DBG_BUF(12, "Unknown ISAKMP entry for outin packet "
         "%s%s %s->%s\n",
         inverse ? "ICMP+" : "",
         pp->name,
         IP_VS_DBG_ADDR(af, &iph->saddr),
         IP_VS_DBG_ADDR(af, &iph->daddr));
 }

 return cp;
}
