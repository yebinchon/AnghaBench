
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct netlink_dump_control {int dump; } ;
struct inet_diag_req {int dummy; } ;
struct inet_diag_bc_op {int dummy; } ;


 int EINVAL ;
 scalar_t__ INET_DIAG_GETSOCK_MAX ;
 int INET_DIAG_REQ_BYTECODE ;
 int NLM_F_DUMP ;
 int idiagnl ;
 scalar_t__ inet_diag_bc_audit (int ,int) ;
 int inet_diag_dump ;
 int inet_diag_get_exact (struct sk_buff*,struct nlmsghdr*) ;
 int netlink_dump_start (int ,struct sk_buff*,struct nlmsghdr*,struct netlink_dump_control*) ;
 int nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 scalar_t__ nlmsg_attrlen (struct nlmsghdr*,int) ;
 struct nlattr* nlmsg_find_attr (struct nlmsghdr*,int,int ) ;
 int nlmsg_len (struct nlmsghdr*) ;

__attribute__((used)) static int inet_diag_rcv_msg(struct sk_buff *skb, struct nlmsghdr *nlh)
{
 int hdrlen = sizeof(struct inet_diag_req);

 if (nlh->nlmsg_type >= INET_DIAG_GETSOCK_MAX ||
     nlmsg_len(nlh) < hdrlen)
  return -EINVAL;

 if (nlh->nlmsg_flags & NLM_F_DUMP) {
  if (nlmsg_attrlen(nlh, hdrlen)) {
   struct nlattr *attr;

   attr = nlmsg_find_attr(nlh, hdrlen,
            INET_DIAG_REQ_BYTECODE);
   if (attr == ((void*)0) ||
       nla_len(attr) < sizeof(struct inet_diag_bc_op) ||
       inet_diag_bc_audit(nla_data(attr), nla_len(attr)))
    return -EINVAL;
  }
  {
   struct netlink_dump_control c = {
    .dump = inet_diag_dump,
   };
   return netlink_dump_start(idiagnl, skb, nlh, &c);
  }
 }

 return inet_diag_get_exact(skb, nlh);
}
