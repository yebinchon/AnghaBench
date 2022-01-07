
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; int * sk; scalar_t__ data; struct net_device* dev; } ;
struct net_device_stats {unsigned int tx_bytes; int tx_packets; int tx_errors; } ;
struct net_device {struct net_device_stats stats; } ;


 int GFP_ATOMIC ;
 scalar_t__ arp_find (unsigned char*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int rose_route_frame (struct sk_buff*,int *) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_set_owner_w (struct sk_buff*,int *) ;

__attribute__((used)) static int rose_rebuild_header(struct sk_buff *skb)
{
 return 1;
}
