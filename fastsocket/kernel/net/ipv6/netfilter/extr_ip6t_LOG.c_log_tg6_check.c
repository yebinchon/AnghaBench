
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {struct ip6t_log_info* targinfo; } ;
struct ip6t_log_info {int level; char* prefix; } ;


 int pr_debug (char*,int) ;

__attribute__((used)) static bool log_tg6_check(const struct xt_tgchk_param *par)
{
 const struct ip6t_log_info *loginfo = par->targinfo;

 if (loginfo->level >= 8) {
  pr_debug("LOG: level %u >= 8\n", loginfo->level);
  return 0;
 }
 if (loginfo->prefix[sizeof(loginfo->prefix)-1] != '\0') {
  pr_debug("LOG: prefix term %i\n",
    loginfo->prefix[sizeof(loginfo->prefix)-1]);
  return 0;
 }
 return 1;
}
