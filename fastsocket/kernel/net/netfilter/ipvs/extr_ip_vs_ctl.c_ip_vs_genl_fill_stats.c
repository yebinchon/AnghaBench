
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int outbps; int inbps; int outpps; int inpps; int cps; int outbytes; int inbytes; int outpkts; int inpkts; int conns; } ;
struct ip_vs_stats {int lock; TYPE_1__ ustats; } ;


 int EMSGSIZE ;
 int IPVS_STATS_ATTR_CONNS ;
 int IPVS_STATS_ATTR_CPS ;
 int IPVS_STATS_ATTR_INBPS ;
 int IPVS_STATS_ATTR_INBYTES ;
 int IPVS_STATS_ATTR_INPKTS ;
 int IPVS_STATS_ATTR_INPPS ;
 int IPVS_STATS_ATTR_OUTBPS ;
 int IPVS_STATS_ATTR_OUTBYTES ;
 int IPVS_STATS_ATTR_OUTPKTS ;
 int IPVS_STATS_ATTR_OUTPPS ;
 int NLA_PUT_U32 (struct sk_buff*,int ,int ) ;
 int NLA_PUT_U64 (struct sk_buff*,int ,int ) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ip_vs_genl_fill_stats(struct sk_buff *skb, int container_type,
     struct ip_vs_stats *stats)
{
 struct nlattr *nl_stats = nla_nest_start(skb, container_type);
 if (!nl_stats)
  return -EMSGSIZE;

 spin_lock_bh(&stats->lock);

 NLA_PUT_U32(skb, IPVS_STATS_ATTR_CONNS, stats->ustats.conns);
 NLA_PUT_U32(skb, IPVS_STATS_ATTR_INPKTS, stats->ustats.inpkts);
 NLA_PUT_U32(skb, IPVS_STATS_ATTR_OUTPKTS, stats->ustats.outpkts);
 NLA_PUT_U64(skb, IPVS_STATS_ATTR_INBYTES, stats->ustats.inbytes);
 NLA_PUT_U64(skb, IPVS_STATS_ATTR_OUTBYTES, stats->ustats.outbytes);
 NLA_PUT_U32(skb, IPVS_STATS_ATTR_CPS, stats->ustats.cps);
 NLA_PUT_U32(skb, IPVS_STATS_ATTR_INPPS, stats->ustats.inpps);
 NLA_PUT_U32(skb, IPVS_STATS_ATTR_OUTPPS, stats->ustats.outpps);
 NLA_PUT_U32(skb, IPVS_STATS_ATTR_INBPS, stats->ustats.inbps);
 NLA_PUT_U32(skb, IPVS_STATS_ATTR_OUTBPS, stats->ustats.outbps);

 spin_unlock_bh(&stats->lock);

 nla_nest_end(skb, nl_stats);

 return 0;

nla_put_failure:
 spin_unlock_bh(&stats->lock);
 nla_nest_cancel(skb, nl_stats);
 return -EMSGSIZE;
}
