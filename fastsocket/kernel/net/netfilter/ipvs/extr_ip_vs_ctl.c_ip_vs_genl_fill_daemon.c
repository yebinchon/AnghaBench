
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
typedef int __be32 ;


 int EMSGSIZE ;
 int IPVS_CMD_ATTR_DAEMON ;
 int IPVS_DAEMON_ATTR_MCAST_IFN ;
 int IPVS_DAEMON_ATTR_STATE ;
 int IPVS_DAEMON_ATTR_SYNC_ID ;
 int NLA_PUT_STRING (struct sk_buff*,int ,char const*) ;
 int NLA_PUT_U32 (struct sk_buff*,int ,int ) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;

__attribute__((used)) static int ip_vs_genl_fill_daemon(struct sk_buff *skb, __be32 state,
      const char *mcast_ifn, __be32 syncid)
{
 struct nlattr *nl_daemon;

 nl_daemon = nla_nest_start(skb, IPVS_CMD_ATTR_DAEMON);
 if (!nl_daemon)
  return -EMSGSIZE;

 NLA_PUT_U32(skb, IPVS_DAEMON_ATTR_STATE, state);
 NLA_PUT_STRING(skb, IPVS_DAEMON_ATTR_MCAST_IFN, mcast_ifn);
 NLA_PUT_U32(skb, IPVS_DAEMON_ATTR_SYNC_ID, syncid);

 nla_nest_end(skb, nl_daemon);

 return 0;

nla_put_failure:
 nla_nest_cancel(skb, nl_daemon);
 return -EMSGSIZE;
}
