
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 int NL80211_MNTR_FLAG_MAX ;
 int mntr_flags_policy ;
 scalar_t__ nla_parse_nested (struct nlattr**,int,struct nlattr*,int ) ;

__attribute__((used)) static int parse_monitor_flags(struct nlattr *nla, u32 *mntrflags)
{
 struct nlattr *flags[NL80211_MNTR_FLAG_MAX + 1];
 int flag;

 *mntrflags = 0;

 if (!nla)
  return -EINVAL;

 if (nla_parse_nested(flags, NL80211_MNTR_FLAG_MAX,
        nla, mntr_flags_policy))
  return -EINVAL;

 for (flag = 1; flag <= NL80211_MNTR_FLAG_MAX; flag++)
  if (flags[flag])
   *mntrflags |= (1<<flag);

 return 0;
}
