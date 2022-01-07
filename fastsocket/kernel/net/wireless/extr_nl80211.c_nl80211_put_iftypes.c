
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;


 int ENOBUFS ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int) ;

__attribute__((used)) static int nl80211_put_iftypes(struct sk_buff *msg, u32 attr, u16 ifmodes)
{
 struct nlattr *nl_modes = nla_nest_start(msg, attr);
 int i;

 if (!nl_modes)
  goto nla_put_failure;

 i = 0;
 while (ifmodes) {
  if ((ifmodes & 1) && nla_put_flag(msg, i))
   goto nla_put_failure;
  ifmodes >>= 1;
  i++;
 }

 nla_nest_end(msg, nl_modes);
 return 0;

nla_put_failure:
 return -ENOBUFS;
}
