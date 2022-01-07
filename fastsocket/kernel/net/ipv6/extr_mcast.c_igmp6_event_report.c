
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ pkt_type; int dev; } ;
struct mld_msg {int mld_mca; } ;
struct inet6_dev {int lock; struct ifmcaddr6* mc_list; } ;
struct ifmcaddr6 {int mca_flags; int mca_lock; int mca_refcnt; int mca_timer; int mca_addr; struct ifmcaddr6* next; } ;
struct icmp6hdr {int dummy; } ;
struct TYPE_2__ {int saddr; } ;


 int EINVAL ;
 int ENODEV ;
 int IPV6_ADDR_ANY ;
 int IPV6_ADDR_LINKLOCAL ;
 int MAF_LAST_REPORTER ;
 int MAF_TIMER_RUNNING ;
 scalar_t__ PACKET_BROADCAST ;
 scalar_t__ PACKET_LOOPBACK ;
 scalar_t__ PACKET_MULTICAST ;
 int atomic_dec (int *) ;
 scalar_t__ del_timer (int *) ;
 scalar_t__ icmp6_hdr (struct sk_buff*) ;
 struct inet6_dev* in6_dev_get (int ) ;
 int in6_dev_put (struct inet6_dev*) ;
 scalar_t__ ipv6_addr_equal (int *,int *) ;
 int ipv6_addr_type (int *) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int igmp6_event_report(struct sk_buff *skb)
{
 struct ifmcaddr6 *ma;
 struct inet6_dev *idev;
 struct mld_msg *mld;
 int addr_type;


 if (skb->pkt_type == PACKET_LOOPBACK)
  return 0;


 if (skb->pkt_type != PACKET_MULTICAST &&
     skb->pkt_type != PACKET_BROADCAST)
  return 0;

 if (!pskb_may_pull(skb, sizeof(*mld) - sizeof(struct icmp6hdr)))
  return -EINVAL;

 mld = (struct mld_msg *)icmp6_hdr(skb);


 addr_type = ipv6_addr_type(&ipv6_hdr(skb)->saddr);
 if (addr_type != IPV6_ADDR_ANY &&
     !(addr_type&IPV6_ADDR_LINKLOCAL))
  return -EINVAL;

 idev = in6_dev_get(skb->dev);
 if (idev == ((void*)0))
  return -ENODEV;





 read_lock_bh(&idev->lock);
 for (ma = idev->mc_list; ma; ma=ma->next) {
  if (ipv6_addr_equal(&ma->mca_addr, &mld->mld_mca)) {
   spin_lock(&ma->mca_lock);
   if (del_timer(&ma->mca_timer))
    atomic_dec(&ma->mca_refcnt);
   ma->mca_flags &= ~(MAF_LAST_REPORTER|MAF_TIMER_RUNNING);
   spin_unlock(&ma->mca_lock);
   break;
  }
 }
 read_unlock_bh(&idev->lock);
 in6_dev_put(idev);
 return 0;
}
