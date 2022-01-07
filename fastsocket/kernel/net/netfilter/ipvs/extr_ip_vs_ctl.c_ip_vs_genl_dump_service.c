
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct netlink_callback {TYPE_1__* nlh; int skb; } ;
struct ip_vs_service {int dummy; } ;
struct TYPE_4__ {int pid; } ;
struct TYPE_3__ {int nlmsg_seq; } ;


 int EMSGSIZE ;
 int IPVS_CMD_NEW_SERVICE ;
 TYPE_2__ NETLINK_CB (int ) ;
 int NLM_F_MULTI ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int ip_vs_genl_family ;
 scalar_t__ ip_vs_genl_fill_service (struct sk_buff*,struct ip_vs_service*) ;

__attribute__((used)) static int ip_vs_genl_dump_service(struct sk_buff *skb,
       struct ip_vs_service *svc,
       struct netlink_callback *cb)
{
 void *hdr;

 hdr = genlmsg_put(skb, NETLINK_CB(cb->skb).pid, cb->nlh->nlmsg_seq,
     &ip_vs_genl_family, NLM_F_MULTI,
     IPVS_CMD_NEW_SERVICE);
 if (!hdr)
  return -EMSGSIZE;

 if (ip_vs_genl_fill_service(skb, svc) < 0)
  goto nla_put_failure;

 return genlmsg_end(skb, hdr);

nla_put_failure:
 genlmsg_cancel(skb, hdr);
 return -EMSGSIZE;
}
