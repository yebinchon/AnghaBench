
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;


 int GFP_KERNEL ;
 void* NLMSG_DATA (struct nlmsghdr*) ;
 int NLMSG_DONE ;
 struct nlmsghdr* NLMSG_NEW (struct sk_buff*,int,int,int,int,int) ;
 int NLM_F_MULTI ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (void*,void*,int) ;
 struct sk_buff* nlmsg_new (int,int ) ;

struct sk_buff *audit_make_reply(int pid, int seq, int type, int done,
     int multi, void *payload, int size)
{
 struct sk_buff *skb;
 struct nlmsghdr *nlh;
 void *data;
 int flags = multi ? NLM_F_MULTI : 0;
 int t = done ? NLMSG_DONE : type;

 skb = nlmsg_new(size, GFP_KERNEL);
 if (!skb)
  return ((void*)0);

 nlh = NLMSG_NEW(skb, pid, seq, t, size, flags);
 data = NLMSG_DATA(nlh);
 memcpy(data, payload, size);
 return skb;

nlmsg_failure:
 if (skb)
  kfree_skb(skb);
 return ((void*)0);
}
