
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xt_target_param {int out; int in; int hooknum; struct ebt_log_info* targinfo; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int logflags; int level; } ;
struct TYPE_4__ {TYPE_1__ log; } ;
struct nf_loginfo {TYPE_2__ u; int type; } ;
struct ebt_log_info {int bitmask; int prefix; int loglevel; } ;


 unsigned int EBT_CONTINUE ;
 int EBT_LOG_NFLOG ;
 int NFPROTO_BRIDGE ;
 int NF_LOG_TYPE_LOG ;
 int ebt_log_packet (int ,int ,struct sk_buff*,int ,int ,struct nf_loginfo*,int ) ;
 int nf_log_packet (int ,int ,struct sk_buff*,int ,int ,struct nf_loginfo*,char*,int ) ;

__attribute__((used)) static unsigned int
ebt_log_tg(struct sk_buff *skb, const struct xt_target_param *par)
{
 const struct ebt_log_info *info = par->targinfo;
 struct nf_loginfo li;

 li.type = NF_LOG_TYPE_LOG;
 li.u.log.level = info->loglevel;
 li.u.log.logflags = info->bitmask;

 if (info->bitmask & EBT_LOG_NFLOG)
  nf_log_packet(NFPROTO_BRIDGE, par->hooknum, skb, par->in,
                par->out, &li, "%s", info->prefix);
 else
  ebt_log_packet(NFPROTO_BRIDGE, par->hooknum, skb, par->in,
                 par->out, &li, info->prefix);
 return EBT_CONTINUE;
}
