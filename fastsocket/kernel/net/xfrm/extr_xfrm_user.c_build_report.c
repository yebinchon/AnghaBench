
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef int u8 ;
struct xfrm_user_report {int sel; int proto; } ;
struct xfrm_selector {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;


 int EMSGSIZE ;
 int NLA_PUT (struct sk_buff*,int ,int,int *) ;
 int XFRMA_COADDR ;
 int XFRM_MSG_REPORT ;
 int memcpy (int *,struct xfrm_selector*,int) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct xfrm_user_report* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;

__attribute__((used)) static int build_report(struct sk_buff *skb, u8 proto,
   struct xfrm_selector *sel, xfrm_address_t *addr)
{
 struct xfrm_user_report *ur;
 struct nlmsghdr *nlh;

 nlh = nlmsg_put(skb, 0, 0, XFRM_MSG_REPORT, sizeof(*ur), 0);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 ur = nlmsg_data(nlh);
 ur->proto = proto;
 memcpy(&ur->sel, sel, sizeof(ur->sel));

 if (addr)
  NLA_PUT(skb, XFRMA_COADDR, sizeof(*addr), addr);

 return nlmsg_end(skb, nlh);

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
