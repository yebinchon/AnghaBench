
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; } ;
struct packet_type {int dummy; } ;
struct net_device {int type; } ;
struct dev_rcv_lists {int dummy; } ;
struct can_frame {int can_dlc; } ;
struct TYPE_2__ {int matches_delta; int matches; int rx_frames_delta; int rx_frames; } ;


 int ARPHRD_CAN ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 scalar_t__ WARN_ONCE (int,char*,int ,int,int) ;
 int can_rcv_filter (struct dev_rcv_lists*,struct sk_buff*) ;
 struct dev_rcv_lists can_rx_alldev_list ;
 TYPE_1__ can_stats ;
 int consume_skb (struct sk_buff*) ;
 int dev_net (struct net_device*) ;
 struct dev_rcv_lists* find_dev_rcv_lists (struct net_device*) ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 int net_eq (int ,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int can_rcv(struct sk_buff *skb, struct net_device *dev,
     struct packet_type *pt, struct net_device *orig_dev)
{
 struct dev_rcv_lists *d;
 struct can_frame *cf = (struct can_frame *)skb->data;
 int matches;

 if (!net_eq(dev_net(dev), &init_net))
  goto drop;

 if (WARN_ONCE(dev->type != ARPHRD_CAN ||
        skb->len != sizeof(struct can_frame) ||
        cf->can_dlc > 8,
        "PF_CAN: dropped non conform skbuf: "
        "dev type %d, len %d, can_dlc %d\n",
        dev->type, skb->len, cf->can_dlc))
  goto drop;


 can_stats.rx_frames++;
 can_stats.rx_frames_delta++;

 rcu_read_lock();


 matches = can_rcv_filter(&can_rx_alldev_list, skb);


 d = find_dev_rcv_lists(dev);
 if (d)
  matches += can_rcv_filter(d, skb);

 rcu_read_unlock();


 consume_skb(skb);

 if (matches > 0) {
  can_stats.matches++;
  can_stats.matches_delta++;
 }

 return NET_RX_SUCCESS;

drop:
 kfree_skb(skb);
 return NET_RX_DROP;
}
