
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int NET_RX_SUCCESS ;
 int dn_dev_hello (struct sk_buff*) ;
 int dn_neigh_pointopoint_hello (struct sk_buff*) ;

__attribute__((used)) static int dn_route_ptp_hello(struct sk_buff *skb)
{
 dn_dev_hello(skb);
 dn_neigh_pointopoint_hello(skb);
 return NET_RX_SUCCESS;
}
