
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xt_target_param {int out; int in; int hooknum; struct ip6t_log_info* targinfo; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int logflags; int level; } ;
struct TYPE_4__ {TYPE_1__ log; } ;
struct nf_loginfo {TYPE_2__ u; int type; } ;
struct ip6t_log_info {int prefix; int logflags; int level; } ;


 int NFPROTO_IPV6 ;
 int NF_LOG_TYPE_LOG ;
 unsigned int XT_CONTINUE ;
 int ip6t_log_packet (int ,int ,struct sk_buff*,int ,int ,struct nf_loginfo*,int ) ;

__attribute__((used)) static unsigned int
log_tg6(struct sk_buff *skb, const struct xt_target_param *par)
{
 const struct ip6t_log_info *loginfo = par->targinfo;
 struct nf_loginfo li;

 li.type = NF_LOG_TYPE_LOG;
 li.u.log.level = loginfo->level;
 li.u.log.logflags = loginfo->logflags;

 ip6t_log_packet(NFPROTO_IPV6, par->hooknum, skb, par->in, par->out,
   &li, loginfo->prefix);
 return XT_CONTINUE;
}
