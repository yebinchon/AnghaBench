
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dev; } ;
struct in6_addr {int dummy; } ;
struct mld_msg {scalar_t__ mld_maxdelay; struct in6_addr mld_mca; } ;
struct mld2_query {scalar_t__ mld2q_mrc; int mld2q_qrv; scalar_t__ mld2q_nsrcs; int mld2q_srcs; } ;
struct ipv6hdr {int dummy; } ;
struct inet6_dev {int mc_qrv; unsigned long mc_maxdelay; int lock; struct ifmcaddr6* mc_list; int mc_ifc_timer; scalar_t__ mc_ifc_count; scalar_t__ mc_v1_seen; } ;
struct ifmcaddr6 {int mca_flags; int mca_lock; int mca_addr; struct ifmcaddr6* next; } ;
struct icmp6hdr {int dummy; } ;
struct TYPE_2__ {scalar_t__ payload_len; struct in6_addr saddr; } ;


 int EINVAL ;
 int HZ ;
 int IPV6_ADDR_ANY ;
 int IPV6_ADDR_LINKLOCAL ;
 int IPV6_ADDR_MULTICAST ;
 int MAF_GSQUERY ;
 int MAF_TIMER_RUNNING ;
 int MLDV2_MRC (int) ;
 int __in6_dev_put (struct inet6_dev*) ;
 scalar_t__ del_timer (int *) ;
 scalar_t__ icmp6_hdr (struct sk_buff*) ;
 int igmp6_group_queried (struct ifmcaddr6*,unsigned long) ;
 struct inet6_dev* in6_dev_get (int ) ;
 int in6_dev_put (struct inet6_dev*) ;
 int ipv6_addr_equal (struct in6_addr*,int *) ;
 int ipv6_addr_type (struct in6_addr*) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 scalar_t__ jiffies ;
 int mld_clear_delrec (struct inet6_dev*) ;
 int mld_gq_start_timer (struct inet6_dev*) ;
 scalar_t__ mld_marksources (struct ifmcaddr6*,int,int ) ;
 int ntohs (scalar_t__) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 scalar_t__ skb_network_header_len (struct sk_buff*) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int igmp6_event_query(struct sk_buff *skb)
{
 struct mld2_query *mlh2 = ((void*)0);
 struct ifmcaddr6 *ma;
 struct in6_addr *group;
 unsigned long max_delay;
 struct inet6_dev *idev;
 struct mld_msg *mld;
 int group_type;
 int mark = 0;
 int len;

 if (!pskb_may_pull(skb, sizeof(struct in6_addr)))
  return -EINVAL;


 len = ntohs(ipv6_hdr(skb)->payload_len) + sizeof(struct ipv6hdr);
 len -= skb_network_header_len(skb);


 if (!(ipv6_addr_type(&ipv6_hdr(skb)->saddr) & IPV6_ADDR_LINKLOCAL))
  return -EINVAL;

 idev = in6_dev_get(skb->dev);

 if (idev == ((void*)0))
  return 0;

 mld = (struct mld_msg *)icmp6_hdr(skb);
 group = &mld->mld_mca;
 group_type = ipv6_addr_type(group);

 if (group_type != IPV6_ADDR_ANY &&
     !(group_type&IPV6_ADDR_MULTICAST)) {
  in6_dev_put(idev);
  return -EINVAL;
 }

 if (len == 24) {
  int switchback;



  max_delay = (ntohs(mld->mld_maxdelay)*HZ)/1000;

  switchback = (idev->mc_qrv + 1) * max_delay;
  idev->mc_v1_seen = jiffies + switchback;


  idev->mc_ifc_count = 0;
  if (del_timer(&idev->mc_ifc_timer))
   __in6_dev_put(idev);

  mld_clear_delrec(idev);
 } else if (len >= 28) {
  int srcs_offset = sizeof(struct mld2_query) -
      sizeof(struct icmp6hdr);
  if (!pskb_may_pull(skb, srcs_offset)) {
   in6_dev_put(idev);
   return -EINVAL;
  }
  mlh2 = (struct mld2_query *)skb_transport_header(skb);
  max_delay = (MLDV2_MRC(ntohs(mlh2->mld2q_mrc))*HZ)/1000;
  if (!max_delay)
   max_delay = 1;
  idev->mc_maxdelay = max_delay;
  if (mlh2->mld2q_qrv)
   idev->mc_qrv = mlh2->mld2q_qrv;
  if (group_type == IPV6_ADDR_ANY) {
   if (mlh2->mld2q_nsrcs) {
    in6_dev_put(idev);
    return -EINVAL;
   }
   mld_gq_start_timer(idev);
   in6_dev_put(idev);
   return 0;
  }

  if (mlh2->mld2q_nsrcs != 0) {
   if (!pskb_may_pull(skb, srcs_offset +
       ntohs(mlh2->mld2q_nsrcs) * sizeof(struct in6_addr))) {
    in6_dev_put(idev);
    return -EINVAL;
   }
   mlh2 = (struct mld2_query *)skb_transport_header(skb);
   mark = 1;
  }
 } else {
  in6_dev_put(idev);
  return -EINVAL;
 }

 read_lock_bh(&idev->lock);
 if (group_type == IPV6_ADDR_ANY) {
  for (ma = idev->mc_list; ma; ma=ma->next) {
   spin_lock_bh(&ma->mca_lock);
   igmp6_group_queried(ma, max_delay);
   spin_unlock_bh(&ma->mca_lock);
  }
 } else {
  for (ma = idev->mc_list; ma; ma=ma->next) {
   if (!ipv6_addr_equal(group, &ma->mca_addr))
    continue;
   spin_lock_bh(&ma->mca_lock);
   if (ma->mca_flags & MAF_TIMER_RUNNING) {

    if (!mark)
     ma->mca_flags &= ~MAF_GSQUERY;
   } else {

    if (mark)
     ma->mca_flags |= MAF_GSQUERY;
    else
     ma->mca_flags &= ~MAF_GSQUERY;
   }
   if (!(ma->mca_flags & MAF_GSQUERY) ||
       mld_marksources(ma, ntohs(mlh2->mld2q_nsrcs), mlh2->mld2q_srcs))
    igmp6_group_queried(ma, max_delay);
   spin_unlock_bh(&ma->mca_lock);
   break;
  }
 }
 read_unlock_bh(&idev->lock);
 in6_dev_put(idev);

 return 0;
}
