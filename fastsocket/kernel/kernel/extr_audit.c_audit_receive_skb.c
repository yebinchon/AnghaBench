
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_flags; } ;


 struct nlmsghdr* NLMSG_NEXT (struct nlmsghdr*,int) ;
 scalar_t__ NLMSG_OK (struct nlmsghdr*,int) ;
 int NLM_F_ACK ;
 int audit_receive_msg (struct sk_buff*,struct nlmsghdr*) ;
 int netlink_ack (struct sk_buff*,struct nlmsghdr*,int) ;
 struct nlmsghdr* nlmsg_hdr (struct sk_buff*) ;

__attribute__((used)) static void audit_receive_skb(struct sk_buff *skb)
{
 struct nlmsghdr *nlh;




 int len;
 int err;

 nlh = nlmsg_hdr(skb);
 len = skb->len;

 while (NLMSG_OK(nlh, len)) {
  err = audit_receive_msg(skb, nlh);

  if (err || (nlh->nlmsg_flags & NLM_F_ACK))
   netlink_ack(skb, nlh, err);

  nlh = NLMSG_NEXT(nlh, len);
 }
}
