
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int qthreshold; scalar_t__ copy_len; int group; } ;
struct TYPE_4__ {TYPE_1__ ulog; } ;
struct nf_loginfo {scalar_t__ type; TYPE_2__ u; } ;
struct net_device {int dummy; } ;
struct ebt_ulog_info {char* prefix; int qthreshold; scalar_t__ cprange; int nlgroup; } ;


 int EBT_ULOG_DEFAULT_NLGROUP ;
 int EBT_ULOG_DEFAULT_QTHRESHOLD ;
 scalar_t__ NF_LOG_TYPE_ULOG ;
 int ebt_ulog_packet (unsigned int,struct sk_buff const*,struct net_device const*,struct net_device const*,struct ebt_ulog_info*,char const*) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static void ebt_log_packet(u_int8_t pf, unsigned int hooknum,
   const struct sk_buff *skb, const struct net_device *in,
   const struct net_device *out, const struct nf_loginfo *li,
   const char *prefix)
{
 struct ebt_ulog_info loginfo;

 if (!li || li->type != NF_LOG_TYPE_ULOG) {
  loginfo.nlgroup = EBT_ULOG_DEFAULT_NLGROUP;
  loginfo.cprange = 0;
  loginfo.qthreshold = EBT_ULOG_DEFAULT_QTHRESHOLD;
  loginfo.prefix[0] = '\0';
 } else {
  loginfo.nlgroup = li->u.ulog.group;
  loginfo.cprange = li->u.ulog.copy_len;
  loginfo.qthreshold = li->u.ulog.qthreshold;
  strlcpy(loginfo.prefix, prefix, sizeof(loginfo.prefix));
 }

 ebt_ulog_packet(hooknum, skb, in, out, &loginfo, prefix);
}
