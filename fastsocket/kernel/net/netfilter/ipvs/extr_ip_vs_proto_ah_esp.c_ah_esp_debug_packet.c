
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ protocol; } ;
struct ip_vs_protocol {int dummy; } ;


 int ETH_P_IPV6 ;
 int ah_esp_debug_packet_v4 (struct ip_vs_protocol*,struct sk_buff const*,int,char const*) ;
 int ah_esp_debug_packet_v6 (struct ip_vs_protocol*,struct sk_buff const*,int,char const*) ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static void
ah_esp_debug_packet(struct ip_vs_protocol *pp, const struct sk_buff *skb,
      int offset, const char *msg)
{





  ah_esp_debug_packet_v4(pp, skb, offset, msg);
}
