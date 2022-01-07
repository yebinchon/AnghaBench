
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nfgenmsg {scalar_t__ res_id; int version; int nfgen_family; } ;
typedef enum ipset_cmd { ____Placeholder_ipset_cmd } ipset_cmd ;


 int AF_INET ;
 int NFNETLINK_V0 ;
 int NFNL_SUBSYS_IPSET ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,unsigned int) ;

__attribute__((used)) static struct nlmsghdr *
start_msg(struct sk_buff *skb, u32 pid, u32 seq, unsigned int flags,
   enum ipset_cmd cmd)
{
 struct nlmsghdr *nlh;
 struct nfgenmsg *nfmsg;

 nlh = nlmsg_put(skb, pid, seq, cmd | (NFNL_SUBSYS_IPSET << 8),
   sizeof(*nfmsg), flags);
 if (nlh == ((void*)0))
  return ((void*)0);

 nfmsg = nlmsg_data(nlh);
 nfmsg->nfgen_family = AF_INET;
 nfmsg->version = NFNETLINK_V0;
 nfmsg->res_id = 0;

 return nlh;
}
