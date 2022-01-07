
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {struct ipt_ulog_info* targinfo; } ;
struct ipt_ulog_info {char* prefix; char qthreshold; } ;


 char ULOG_MAX_QLEN ;
 int pr_debug (char*,char) ;

__attribute__((used)) static bool ulog_tg_check(const struct xt_tgchk_param *par)
{
 const struct ipt_ulog_info *loginfo = par->targinfo;

 if (loginfo->prefix[sizeof(loginfo->prefix) - 1] != '\0') {
  pr_debug("ipt_ULOG: prefix term %i\n",
    loginfo->prefix[sizeof(loginfo->prefix) - 1]);
  return 0;
 }
 if (loginfo->qthreshold > ULOG_MAX_QLEN) {
  pr_debug("ipt_ULOG: queue threshold %Zu > MAX_QLEN\n",
    loginfo->qthreshold);
  return 0;
 }
 return 1;
}
