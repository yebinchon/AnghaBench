
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ip_vs_flags {int mask; int flags; } ;
struct ip_vs_service {int fwmark; int timeout; int netmask; int stats; TYPE_2__* pe; TYPE_1__* scheduler; int port; struct ip_vs_flags addr; int protocol; int af; int flags; } ;
typedef int flags ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int name; } ;


 int EMSGSIZE ;
 int HZ ;
 int IPVS_CMD_ATTR_SERVICE ;
 int IPVS_SVC_ATTR_ADDR ;
 int IPVS_SVC_ATTR_AF ;
 int IPVS_SVC_ATTR_FLAGS ;
 int IPVS_SVC_ATTR_FWMARK ;
 int IPVS_SVC_ATTR_NETMASK ;
 int IPVS_SVC_ATTR_PE_NAME ;
 int IPVS_SVC_ATTR_PORT ;
 int IPVS_SVC_ATTR_PROTOCOL ;
 int IPVS_SVC_ATTR_SCHED_NAME ;
 int IPVS_SVC_ATTR_STATS ;
 int IPVS_SVC_ATTR_TIMEOUT ;
 int NLA_PUT (struct sk_buff*,int ,int,struct ip_vs_flags*) ;
 int NLA_PUT_STRING (struct sk_buff*,int ,int ) ;
 int NLA_PUT_U16 (struct sk_buff*,int ,int ) ;
 int NLA_PUT_U32 (struct sk_buff*,int ,int) ;
 scalar_t__ ip_vs_genl_fill_stats (struct sk_buff*,int ,int *) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;

__attribute__((used)) static int ip_vs_genl_fill_service(struct sk_buff *skb,
       struct ip_vs_service *svc)
{
 struct nlattr *nl_service;
 struct ip_vs_flags flags = { .flags = svc->flags,
         .mask = ~0 };

 nl_service = nla_nest_start(skb, IPVS_CMD_ATTR_SERVICE);
 if (!nl_service)
  return -EMSGSIZE;

 NLA_PUT_U16(skb, IPVS_SVC_ATTR_AF, svc->af);

 if (svc->fwmark) {
  NLA_PUT_U32(skb, IPVS_SVC_ATTR_FWMARK, svc->fwmark);
 } else {
  NLA_PUT_U16(skb, IPVS_SVC_ATTR_PROTOCOL, svc->protocol);
  NLA_PUT(skb, IPVS_SVC_ATTR_ADDR, sizeof(svc->addr), &svc->addr);
  NLA_PUT_U16(skb, IPVS_SVC_ATTR_PORT, svc->port);
 }

 NLA_PUT_STRING(skb, IPVS_SVC_ATTR_SCHED_NAME, svc->scheduler->name);
 if (svc->pe)
  NLA_PUT_STRING(skb, IPVS_SVC_ATTR_PE_NAME, svc->pe->name);
 NLA_PUT(skb, IPVS_SVC_ATTR_FLAGS, sizeof(flags), &flags);
 NLA_PUT_U32(skb, IPVS_SVC_ATTR_TIMEOUT, svc->timeout / HZ);
 NLA_PUT_U32(skb, IPVS_SVC_ATTR_NETMASK, svc->netmask);

 if (ip_vs_genl_fill_stats(skb, IPVS_SVC_ATTR_STATS, &svc->stats))
  goto nla_put_failure;

 nla_nest_end(skb, nl_service);

 return 0;

nla_put_failure:
 nla_nest_cancel(skb, nl_service);
 return -EMSGSIZE;
}
