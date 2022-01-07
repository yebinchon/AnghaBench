
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xt_target_param {int out; int in; int hooknum; int family; struct xt_nflog_info* targinfo; } ;
struct xt_nflog_info {int prefix; int threshold; int group; int len; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int qthreshold; int group; int copy_len; } ;
struct TYPE_4__ {TYPE_1__ ulog; } ;
struct nf_loginfo {TYPE_2__ u; int type; } ;


 int NF_LOG_TYPE_ULOG ;
 unsigned int XT_CONTINUE ;
 int nfulnl_log_packet (int ,int ,struct sk_buff*,int ,int ,struct nf_loginfo*,int ) ;

__attribute__((used)) static unsigned int
nflog_tg(struct sk_buff *skb, const struct xt_target_param *par)
{
 const struct xt_nflog_info *info = par->targinfo;
 struct nf_loginfo li;

 li.type = NF_LOG_TYPE_ULOG;
 li.u.ulog.copy_len = info->len;
 li.u.ulog.group = info->group;
 li.u.ulog.qthreshold = info->threshold;

 nfulnl_log_packet(par->family, par->hooknum, skb, par->in,
     par->out, &li, info->prefix);
 return XT_CONTINUE;
}
