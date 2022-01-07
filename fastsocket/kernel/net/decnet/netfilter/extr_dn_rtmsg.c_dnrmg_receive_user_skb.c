
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_len; } ;


 int CAP_NET_ADMIN ;
 int EINVAL ;
 int EPERM ;
 int RCV_SKB_FAIL (int ) ;
 struct nlmsghdr* nlmsg_hdr (struct sk_buff*) ;
 scalar_t__ security_netlink_recv (struct sk_buff*,int ) ;

__attribute__((used)) static inline void dnrmg_receive_user_skb(struct sk_buff *skb)
{
 struct nlmsghdr *nlh = nlmsg_hdr(skb);

 if (nlh->nlmsg_len < sizeof(*nlh) || skb->len < nlh->nlmsg_len)
  return;

 if (security_netlink_recv(skb, CAP_NET_ADMIN))
  RCV_SKB_FAIL(-EPERM);



 RCV_SKB_FAIL(-EINVAL);
}
