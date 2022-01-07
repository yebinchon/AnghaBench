
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trllc {scalar_t__ ethertype; } ;
struct trh_hdr {int daddr; } ;
struct sk_buff {struct net_device* dev; scalar_t__ data; } ;
struct net_device {int dummy; } ;


 int ETH_P_IP ;
 scalar_t__ arp_find (int ,struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 int ntohs (scalar_t__) ;
 int printk (char*,int ) ;
 int tr_source_route (struct sk_buff*,struct trh_hdr*,struct net_device*) ;

__attribute__((used)) static int tr_rebuild_header(struct sk_buff *skb)
{
 struct trh_hdr *trh=(struct trh_hdr *)skb->data;
 struct trllc *trllc=(struct trllc *)(skb->data+sizeof(struct trh_hdr));
 struct net_device *dev = skb->dev;





 if(trllc->ethertype != htons(ETH_P_IP)) {
  printk("tr_rebuild_header: Don't know how to resolve type %04X addresses ?\n", ntohs(trllc->ethertype));
  return 0;
 }







 {
  tr_source_route(skb,trh,dev);
  return 0;
 }
}
