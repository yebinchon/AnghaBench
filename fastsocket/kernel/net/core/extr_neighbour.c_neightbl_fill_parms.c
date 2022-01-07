
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct neigh_parms {int locktime; int proxy_delay; int anycast_delay; int retrans_time; int delay_probe_time; int gc_staletime; int base_reachable_time; int reachable_time; int mcast_probes; int ucast_probes; int app_probes; int proxy_qlen; int queue_len; int refcnt; TYPE_1__* dev; } ;
struct TYPE_2__ {int ifindex; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int NDTA_PARMS ;
 int NDTPA_ANYCAST_DELAY ;
 int NDTPA_APP_PROBES ;
 int NDTPA_BASE_REACHABLE_TIME ;
 int NDTPA_DELAY_PROBE_TIME ;
 int NDTPA_GC_STALETIME ;
 int NDTPA_IFINDEX ;
 int NDTPA_LOCKTIME ;
 int NDTPA_MCAST_PROBES ;
 int NDTPA_PROXY_DELAY ;
 int NDTPA_PROXY_QLEN ;
 int NDTPA_QUEUE_LEN ;
 int NDTPA_REACHABLE_TIME ;
 int NDTPA_REFCNT ;
 int NDTPA_RETRANS_TIME ;
 int NDTPA_UCAST_PROBES ;
 int NLA_PUT_MSECS (struct sk_buff*,int ,int ) ;
 int NLA_PUT_U32 (struct sk_buff*,int ,int ) ;
 int atomic_read (int *) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;

__attribute__((used)) static int neightbl_fill_parms(struct sk_buff *skb, struct neigh_parms *parms)
{
 struct nlattr *nest;

 nest = nla_nest_start(skb, NDTA_PARMS);
 if (nest == ((void*)0))
  return -ENOBUFS;

 if (parms->dev)
  NLA_PUT_U32(skb, NDTPA_IFINDEX, parms->dev->ifindex);

 NLA_PUT_U32(skb, NDTPA_REFCNT, atomic_read(&parms->refcnt));
 NLA_PUT_U32(skb, NDTPA_QUEUE_LEN, parms->queue_len);
 NLA_PUT_U32(skb, NDTPA_PROXY_QLEN, parms->proxy_qlen);
 NLA_PUT_U32(skb, NDTPA_APP_PROBES, parms->app_probes);
 NLA_PUT_U32(skb, NDTPA_UCAST_PROBES, parms->ucast_probes);
 NLA_PUT_U32(skb, NDTPA_MCAST_PROBES, parms->mcast_probes);
 NLA_PUT_MSECS(skb, NDTPA_REACHABLE_TIME, parms->reachable_time);
 NLA_PUT_MSECS(skb, NDTPA_BASE_REACHABLE_TIME,
        parms->base_reachable_time);
 NLA_PUT_MSECS(skb, NDTPA_GC_STALETIME, parms->gc_staletime);
 NLA_PUT_MSECS(skb, NDTPA_DELAY_PROBE_TIME, parms->delay_probe_time);
 NLA_PUT_MSECS(skb, NDTPA_RETRANS_TIME, parms->retrans_time);
 NLA_PUT_MSECS(skb, NDTPA_ANYCAST_DELAY, parms->anycast_delay);
 NLA_PUT_MSECS(skb, NDTPA_PROXY_DELAY, parms->proxy_delay);
 NLA_PUT_MSECS(skb, NDTPA_LOCKTIME, parms->locktime);

 return nla_nest_end(skb, nest);

nla_put_failure:
 nla_nest_cancel(skb, nest);
 return -EMSGSIZE;
}
