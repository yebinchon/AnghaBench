
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int eth_addr; } ;
struct tipc_media_addr {TYPE_1__ dev_addr; } ;
struct tipc_bearer {scalar_t__ usr_handle; } ;
struct sk_buff {int len; struct net_device* dev; } ;
struct net_device {int dev_addr; } ;
struct eth_bearer {struct net_device* dev; } ;


 int ETH_P_TIPC ;
 int GFP_ATOMIC ;
 int dev_hard_header (struct sk_buff*,struct net_device*,int ,int *,int ,int ) ;
 int dev_queue_xmit (struct sk_buff*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_reset_network_header (struct sk_buff*) ;

__attribute__((used)) static int send_msg(struct sk_buff *buf, struct tipc_bearer *tb_ptr,
      struct tipc_media_addr *dest)
{
 struct sk_buff *clone;
 struct net_device *dev;

 clone = skb_clone(buf, GFP_ATOMIC);
 if (clone) {
  skb_reset_network_header(clone);
  dev = ((struct eth_bearer *)(tb_ptr->usr_handle))->dev;
  clone->dev = dev;
  dev_hard_header(clone, dev, ETH_P_TIPC,
     &dest->dev_addr.eth_addr,
     dev->dev_addr, clone->len);
  dev_queue_xmit(clone);
 }
 return 0;
}
