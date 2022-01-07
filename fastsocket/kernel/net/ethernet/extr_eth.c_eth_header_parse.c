
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ethhdr {int h_source; } ;


 int ETH_ALEN ;
 struct ethhdr* eth_hdr (struct sk_buff const*) ;
 int memcpy (unsigned char*,int ,int) ;

int eth_header_parse(const struct sk_buff *skb, unsigned char *haddr)
{
 const struct ethhdr *eth = eth_hdr(skb);
 memcpy(haddr, eth->h_source, ETH_ALEN);
 return ETH_ALEN;
}
