
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_ethhdr {int h_vlan_encapsulated_proto; int h_source; int h_dest; } ;
struct sk_buff {scalar_t__ data; struct net_device* dev; } ;
struct net_device {int dev_addr; int name; } ;


 int ETH_ALEN ;
 int ETH_P_IP ;
 int arp_find (int ,struct sk_buff*) ;
 int htons (int ) ;
 int memcpy (int ,int ,int ) ;
 int ntohs (int) ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static int vlan_dev_rebuild_header(struct sk_buff *skb)
{
 struct net_device *dev = skb->dev;
 struct vlan_ethhdr *veth = (struct vlan_ethhdr *)(skb->data);

 switch (veth->h_vlan_encapsulated_proto) {






 default:
  pr_debug("%s: unable to resolve type %X addresses.\n",
    dev->name, ntohs(veth->h_vlan_encapsulated_proto));

  memcpy(veth->h_source, dev->dev_addr, ETH_ALEN);
  break;
 }

 return 0;
}
