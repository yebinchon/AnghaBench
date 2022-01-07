
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sock {int sk_sleep; int sk_write_queue; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct net_device {int mc_count; int flags; int* broadcast; struct dev_mc_list* mc_list; int name; } ;
struct dev_mc_list {int* dmi_addr; struct dev_mc_list* next; } ;
struct bnep_set_filter_req {void* len; int ctrl; int type; } ;
struct bnep_session {TYPE_1__* sock; } ;
struct TYPE_2__ {struct sock* sk; } ;


 int BNEP_CONTROL ;
 int BNEP_FILTER_MULTI_ADDR_SET ;
 int BNEP_MAX_MULTICAST_FILTERS ;
 int BT_DBG (char*,int ,int) ;
 int BT_ERR (char*,int ) ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_PROMISC ;
 int __skb_put (struct sk_buff*,int) ;
 struct sk_buff* alloc_skb (int,int ) ;
 void* htons (int) ;
 int memcpy (int ,int*,int) ;
 struct bnep_session* netdev_priv (struct net_device*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int wake_up_interruptible (int ) ;

__attribute__((used)) static void bnep_net_set_mc_list(struct net_device *dev)
{
}
